
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; scalar_t__ lo; } ;
struct TYPE_4__ {double dbl; TYPE_1__ as_int; } ;
typedef TYPE_2__ double_accessor ;


 double C1 ;
 double C2 ;
 double C3 ;
 double C4 ;
 double C5 ;
 double C6 ;
 int __HI (double) ;
 double one ;

__attribute__((used)) static double
__kernel_cos (double x, double y)
{
  double a, hz, z, r;
  int ix;

  ix = __HI (x) & 0x7fffffff;
  if (ix < 0x3e400000)
  {
    if (((int) x) == 0)
    {
      return one;
    }
  }
  z = x * x;
  r = z * (C1 + z * (C2 + z * (C3 + z * (C4 + z * (C5 + z * C6)))));
  if (ix < 0x3FD33333)
  {
    return one - (0.5 * z - (z * r - x * y));
  }
  else
  {
    double_accessor qx;
    if (ix > 0x3fe90000)
    {
      qx.dbl = 0.28125;
    }
    else
    {
      qx.as_int.hi = ix - 0x00200000;
      qx.as_int.lo = 0;
    }
    hz = 0.5 * z - qx.dbl;
    a = one - qx.dbl;
    return a - (hz - (z * r - x * y));
  }
}
