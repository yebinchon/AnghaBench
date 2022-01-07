
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* P ;

__attribute__((used)) static void privacy_resort (int a, int b, int mode) {
  int i, j, h, t;
  if (a >= b) { return; }
  h = P[(a+b)>>1] ^ mode;
  i = a;
  j = b;
  do {
    while ((P[i] ^ mode) < h) { i++; }
    while ((P[j] ^ mode) > h) { j--; }
    if (i <= j) {
      t = P[i]; P[i++] = P[j]; P[j--] = t;
    }
  } while (i <= j);
  privacy_resort (a, j, mode);
  privacy_resort (i, b, mode);
}
