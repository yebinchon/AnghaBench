
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hi; int lo; } ;
struct TYPE_4__ {double dbl; TYPE_1__ as_int; } ;
typedef TYPE_2__ double_accessor ;


 int __HI (double) ;
 unsigned int __LO (double) ;

double
nextafter (double x,
           double y)
{
  int hx, hy, ix, iy;
  unsigned lx, ly;
  double_accessor ret;

  hx = __HI (x);
  lx = __LO (x);
  hy = __HI (y);
  ly = __LO (y);
  ix = hx & 0x7fffffff;
  iy = hy & 0x7fffffff;

  if (((ix >= 0x7ff00000) && ((ix - 0x7ff00000) | lx) != 0)
      || ((iy >= 0x7ff00000) && ((iy - 0x7ff00000) | ly) != 0))
  {
    return x + y;
  }

  if (x == y)
  {
    return x;
  }

  if ((ix | lx) == 0)
  {
    ret.as_int.hi = hy & 0x80000000;
    ret.as_int.lo = 1;
    y = ret.dbl * ret.dbl;
    if (y == ret.dbl)
    {
      return y;
    }
    else
    {
      return ret.dbl;
    }
  }

  if (hx >= 0)
  {
    if (hx > hy || ((hx == hy) && (lx > ly)))
    {
      if (lx == 0)
      {
        hx -= 1;
      }

      lx -= 1;
    }
    else
    {
      lx += 1;

      if (lx == 0)
      {
        hx += 1;
      }
    }
  }
  else
  {
    if (hy >= 0 || hx > hy || ((hx == hy) && (lx > ly)))
    {
      if (lx == 0)
      {
        hx -= 1;
      }

      lx -= 1;
    }
    else
    {
      lx += 1;

      if (lx == 0)
      {
        hx += 1;
      }
    }
  }

  hy = hx & 0x7ff00000;

  if (hy >= 0x7ff00000)
  {
    return x + x;
  }

  if (hy < 0x00100000)
  {
    y = x * x;
    if (y != x)
    {
      ret.as_int.hi = hx;
      ret.as_int.lo = lx;
      return ret.dbl;
    }
  }

  ret.as_int.hi = hx;
  ret.as_int.lo = lx;
  return ret.dbl;
}
