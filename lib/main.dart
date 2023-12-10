import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioPlayer();
    player.play(AssetSource('note$sound.wav'));
  }

  Expanded makeBtn({required Color color, required int sound}) {
    return Expanded(
      child: TextButton(
        onPressed: (() => playSound(sound)),
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              makeBtn(color: Colors.red, sound: 1),
              makeBtn(color: Colors.orange, sound: 2),
              makeBtn(color: Colors.green, sound: 3),
              makeBtn(color: Colors.blue, sound: 4),
              makeBtn(color: Colors.teal, sound: 5),
              makeBtn(color: Colors.purple, sound: 6),
              makeBtn(color: Colors.yellow, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
