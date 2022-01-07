
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gf32_mod (unsigned long long,int) ;

__attribute__((used)) static unsigned gf32_mult (unsigned a, unsigned b) {
  int i;
  const unsigned long long m = b;
  unsigned long long r = 0;
  for (i = 0; i < 32; i++) {
    if (a & (1U << i)) {
      r ^= m << i;
    }
  }
  return gf32_mod (r, 62);
}
