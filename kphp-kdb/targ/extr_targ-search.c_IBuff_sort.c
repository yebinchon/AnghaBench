
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IBuff ;

__attribute__((used)) static void IBuff_sort (int a, int b) {
  int i, j, h, t;
  if (a >= b) { return; }
  h = IBuff[(a+b)>>1];
  i = a;
  j = b;
  do {
    while (IBuff[i] < h) { i++; }
    while (IBuff[j] > h) { j--; }
    if (i <= j) {
      t = IBuff[i]; IBuff[i++] = IBuff[j]; IBuff[j--] = t;
    }
  } while (i <= j);
  IBuff_sort (a, j);
  IBuff_sort (i, b);
}
