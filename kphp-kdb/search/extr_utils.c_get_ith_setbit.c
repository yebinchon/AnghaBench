
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

int get_ith_setbit(int mask, int i) {
  int tmp1, tmp2;
  assert(i >= 0 && i < 32);
  while (i-- > 0) {
    mask &= mask-1;
  }
  assert(mask);
  asm("bsf %1,%0\n\t"
        : "=&q"(tmp1), "=&q"(tmp2)
        : "1"(mask)
        : "cc");
  return tmp1;
}
