
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __HI (double) ;

int
finite (double x)
{
  int hx;

  hx = __HI (x);
  return (unsigned) ((hx & 0x7fffffff) - 0x7ff00000) >> 31;
}
