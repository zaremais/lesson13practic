import 'dart:io';
import 'dart:math';

void main() {
  game1(1, 100);
  // game();
}

void game1(int min, max) {
  print('Компьютер загадал число от 1 до 100');
  int min = 0;
  int max = 100;
  int count = 0;
  int num = Random().nextInt(100);
  int mid = (min + max) ~/ 2;
  int userNumber = min + Random().nextInt(max - min);

  while (true) {
    count++;
    stdout.write('Введите ваше число: ');
    userNumber = int.parse(stdin.readLineSync()!);

    if (userNumber > num) {
      max = mid;
      mid = min + Random().nextInt(max - min);
      count++;
      print('less');
    } else if (userNumber < num) {
      min = mid;
      mid = min + Random().nextInt(max - min);
      count++;
      print('greater');
    } else if (userNumber == num) {
      print('yes');
      print(count++);
    }
  }
}



void game() {
  int num = 0, userNumber;
  Random random = Random();

  num = random.nextInt(100) + 1;
  print('Компьютер загадал число от 1 до 100');

  while (true) {
    stdout.write('Введите ваше число: ');
    userNumber = int.parse(stdin.readLineSync()!);

    if (userNumber > num) {
      print('greater');
    } else if (userNumber < num) {
      print('less');
    } else {
      print('Yes');
    }
  }
}
