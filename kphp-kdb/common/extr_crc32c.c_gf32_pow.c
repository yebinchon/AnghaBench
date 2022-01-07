
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gf32_mult (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned gf32_pow (unsigned a, int k) {
  if (!k) { return 1; }
  unsigned x = gf32_pow (gf32_mult (a, a), k >> 1);
  if (k & 1) {
    x = gf32_mult (x, a);
  }
  return x;
}
