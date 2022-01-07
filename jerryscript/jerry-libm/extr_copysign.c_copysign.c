
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; } ;
struct TYPE_4__ {double dbl; TYPE_1__ as_int; } ;
typedef TYPE_2__ double_accessor ;


 int __HI (double) ;

double
copysign (double x, double y)
{
  double_accessor ret;
  ret.dbl = x;
  ret.as_int.hi = (__HI (x) & 0x7fffffff) | (__HI (y) & 0x80000000);
  return ret.dbl;
}
