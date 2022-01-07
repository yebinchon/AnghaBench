
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int popcount_short (int) ;

int get_bitno(int mask, int i) {
  if (0 == (mask & (1<<i)) ) return -1;
  return popcount_short (mask & ((1 << i) - 1));
}
