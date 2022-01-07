
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hash_t ;


 scalar_t__* Q ;
 int Qw ;

int search_in_msg (hash_t *H, int hc) {
  int i, a, b, c;

  for (i = 0; i < Qw; i++) {
    hash_t h = Q[i];
    a = -1; b = hc;
    while (b - a > 1) {
      c = (a + b) >> 1;
      if (H[c] > h) { b = c; } else { a = c; }
    }
    if (a < 0 || H[a] != h) { return 0; }
  }
  return 1;
}
