
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; } ;
struct TYPE_4__ {double dbl; TYPE_1__ as_int; } ;
typedef TYPE_2__ double_accessor ;


 double P1 ;
 double P2 ;
 double P3 ;
 double P4 ;
 double P5 ;
 unsigned int __HI (double) ;
 unsigned int __LO (double) ;
 scalar_t__* halF ;
 double huge ;
 double invln2 ;
 double* ln2HI ;
 double* ln2LO ;
 double o_threshold ;
 double one ;
 double twom1000 ;
 double u_threshold ;

double
exp (double x)
{
  double hi, lo, c, t;
  int k = 0, xsb;
  unsigned hx;

  hx = __HI (x);
  xsb = (hx >> 31) & 1;
  hx &= 0x7fffffff;


  if (hx >= 0x40862E42)
  {
    if (hx >= 0x7ff00000)
    {
      if (((hx & 0xfffff) | __LO (x)) != 0)
      {
        return x + x;
      }
      else
      {
        return (xsb == 0) ? x : 0.0;
      }
    }
    if (x > o_threshold)
    {
      return huge * huge;
    }
    if (x < u_threshold)
    {
      return twom1000 * twom1000;
    }
  }


  if (hx > 0x3fd62e42)
  {
    if (hx < 0x3FF0A2B2)
    {
      hi = x - ln2HI[xsb];
      lo = ln2LO[xsb];
      k = 1 - xsb - xsb;
    }
    else
    {
      k = (int) (invln2 * x + halF[xsb]);
      t = k;
      hi = x - t * ln2HI[0];
      lo = t * ln2LO[0];
    }
    x = hi - lo;
  }
  else if (hx < 0x3e300000)
  {
    if (huge + x > one)
    {
      return one + x;
    }
  }
  else
  {
    k = 0;
  }

  double_accessor ret;


  t = x * x;
  c = x - t * (P1 + t * (P2 + t * (P3 + t * (P4 + t * P5))));
  if (k == 0)
  {
    return one - ((x * c) / (c - 2.0) - x);
  }
  else
  {
    ret.dbl = one - ((lo - (x * c) / (2.0 - c)) - hi);
  }
  if (k >= -1021)
  {
    ret.as_int.hi += (k << 20);
    return ret.dbl;
  }
  else
  {
    ret.as_int.hi += ((k + 1000) << 20);
    return ret.dbl * twom1000;
  }
}
