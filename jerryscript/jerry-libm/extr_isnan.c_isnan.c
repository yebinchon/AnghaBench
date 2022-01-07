
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __HI (double) ;
 int __LO (double) ;

int
isnan (double x)
{
  int hx, lx;

  hx = (__HI (x) & 0x7fffffff);
  lx = __LO (x);
  hx |= (unsigned) (lx | (-lx)) >> 31;
  hx = 0x7ff00000 - hx;
  return ((unsigned) (hx)) >> 31;
}
