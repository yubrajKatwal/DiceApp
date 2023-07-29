import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var leftDiceNumber = '2';
  var RightDiceNumber = '3';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Dice App'),
        ),
        body:
        Center(
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Random random = new Random();
                        int randomNumber = random.nextInt(6)+1;
                        leftDiceNumber=randomNumber.toString();
                      });
                     },

                    child: Image.asset('assets/dice$leftDiceNumber.png'
               ,
                scale: 2.5,
              ),
                  )),
              SizedBox(
                width: 50,
              ),
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Random random = new Random();
                        int randomNumber2= random.nextInt(6) + 1;
                        RightDiceNumber= randomNumber2.toString();
                      });

                      },
                    child: Image.asset('assets/dice$RightDiceNumber.png'
                      ,
                scale: 2.5,
              ),
                  )),

            ],
          ),
        ));
  }
}




