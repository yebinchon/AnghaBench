
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hash_t ;


 scalar_t__* Q ;

void hsort (int a, int b) {
  int i, j;
  hash_t h, t;
  if (a >= b) return;
  i = a;
  j = b;
  h = Q[(a+b) >> 1];
  do {
    while (Q[i] < h) i++;
    while (Q[j] > h) j--;
    if (i <= j) {
      t = Q[i]; Q[i++] = Q[j]; Q[j--] = t;
    }
  } while (i <= j);
  hsort (a, j);
  hsort (i, b);
}
