
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int get_bitno_sparse(int mask, int i) {
  int j, m = 1 << i;
  if (0 == (mask & m) ) return -1;
  for (j = 0;;j++) {
    int w = mask & (mask - 1);
    if (m == (w ^ mask)) return j;
    mask = w;
  }
}
