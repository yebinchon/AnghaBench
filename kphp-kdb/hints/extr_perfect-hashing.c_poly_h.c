
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int poly_h (unsigned long long v, unsigned int mul, unsigned int mod) {
  unsigned long long res = 0;
  int i;
  for (i = 0; i < 4; i++) {
    res *= mul;
    res ^= (v >> (16 * i)) & (0xffff);
  }


  return (res >> 32) % mod;
}
