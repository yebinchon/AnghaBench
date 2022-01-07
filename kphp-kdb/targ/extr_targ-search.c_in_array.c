
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int in_array (int x, int List[], int len) {
  int a = -1, b = len, c;
  while (b - a > 1) {
    c = ((a + b) >> 1);
    if (List[c] <= x) {
      a = c;
    } else {
      b = c;
    }
  }
  if (a >= 0 && List[a] == x) {
    return a;
  } else {
    return -1;
  }
}
