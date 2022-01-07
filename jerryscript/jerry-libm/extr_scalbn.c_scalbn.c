
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
 int __LO (double) ;
 double copysign (double,double) ;
 double huge ;
 double tiny ;
 double two54 ;
 double twom54 ;

double
scalbn (double x, int n)
{
  int k, hx, lx;

  hx = __HI (x);
  lx = __LO (x);
  k = (hx & 0x7ff00000) >> 20;
  if (k == 0)
  {
    if ((lx | (hx & 0x7fffffff)) == 0)
    {
      return x;
    }
    x *= two54;
    hx = __HI (x);
    k = ((hx & 0x7ff00000) >> 20) - 54;
    if (n < -50000)
    {
      return tiny * x;
    }
  }
  if (k == 0x7ff)
  {
    return x + x;
  }
  k = k + n;
  if (k > 0x7fe)
  {
    return huge * copysign (huge, x);
  }
  if (k > 0)
  {
    double_accessor ret;
    ret.dbl = x;
    ret.as_int.hi = (hx & 0x800fffff) | (k << 20);
    return ret.dbl;
  }
  if (k <= -54)
  {
    if (n > 50000)
    {
      return huge * copysign (huge, x);
    }
    else
    {
      return tiny * copysign (tiny, x);
    }
  }
  k += 54;
  double_accessor ret;
  ret.dbl = x;
  ret.as_int.hi = (hx & 0x800fffff) | (k << 20);
  return ret.dbl * twom54;
}
