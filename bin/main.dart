import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) exit(1);
  int inNumber;
  try {
    inNumber =  int.parse(arguments[0]); 
  } catch (e) {
    print("No number");
    exit(1);
  }

  List<int> tmp = [1, 1];
  int sum = 0;

  for (int i = 0; i < inNumber; i++) {
    sum = tmp[0] + tmp[1];
    if (i%2 == 1) {
      tmp[0] = sum;
    } else {
      tmp[1] = sum;
    }
    print(tmp);
  }

  print(sum);
}
