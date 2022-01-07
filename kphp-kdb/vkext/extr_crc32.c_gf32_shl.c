
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gf32_mod (unsigned long long,int) ;

__attribute__((used)) static unsigned gf32_shl (unsigned int a, int shift) {
  unsigned long long r = a;
  r <<= shift;
  return gf32_mod (r, 31 + shift);
}
