
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
 unsigned int __LO (double) ;
 double atan (double) ;
 double fabs (double) ;
 double pi ;
 double pi_lo ;
 double pi_o_2 ;
 double pi_o_4 ;
 double tiny ;
 double zero ;

double
atan2 (double y, double x)
{
  double_accessor z;
  int k, m, hx, hy, ix, iy;
  unsigned lx, ly;

  hx = __HI (x);
  ix = hx & 0x7fffffff;
  lx = __LO (x);
  hy = __HI (y);
  iy = hy & 0x7fffffff;
  ly = __LO (y);
  if (((ix | ((lx | -lx) >> 31)) > 0x7ff00000) || ((iy | ((ly | -ly) >> 31)) > 0x7ff00000))
  {
    return x + y;
  }
  if (((hx - 0x3ff00000) | lx) == 0)
  {
    return atan (y);
  }
  m = ((hy >> 31) & 1) | ((hx >> 30) & 2);


  if ((iy | ly) == 0)
  {
    switch (m)
    {
      case 0:
      case 1:
      {
        return y;
      }
      case 2:
      {
        return pi + tiny;
      }
      case 3:
      {
        return -pi - tiny;
      }
    }
  }

  if ((ix | lx) == 0)
  {
    return (hy < 0) ? -pi_o_2 - tiny : pi_o_2 + tiny;
  }


  if (ix == 0x7ff00000)
  {
    if (iy == 0x7ff00000)
    {
      switch (m)
      {
        case 0:
        {
          return pi_o_4 + tiny;
        }
        case 1:
        {
          return -pi_o_4 - tiny;
        }
        case 2:
        {
          return 3.0 * pi_o_4 + tiny;
        }
        case 3:
        {
          return -3.0 * pi_o_4 - tiny;
        }
      }
    }
    else
    {
      switch (m)
      {
        case 0:
        {
          return zero;
        }
        case 1:
        {
          return -zero;
        }
        case 2:
        {
          return pi + tiny;
        }
        case 3:
        {
          return -pi - tiny;
        }
      }
    }
  }

  if (iy == 0x7ff00000)
  {
    return (hy < 0) ? -pi_o_2 - tiny : pi_o_2 + tiny;
  }


  k = (iy - ix) >> 20;
  if (k > 60)
  {
    z.dbl = pi_o_2 + 0.5 * pi_lo;
  }
  else if (hx < 0 && k < -60)
  {
    z.dbl = 0.0;
  }
  else
  {
    z.dbl = atan (fabs (y / x));
  }
  switch (m)
  {
    case 0:
    {
      return z.dbl;
    }
    case 1:
    {
      z.as_int.hi ^= 0x80000000;
      return z.dbl;
    }
    case 2:
    {
      return pi - (z.dbl - pi_lo);
    }

    default:
    {
      return (z.dbl - pi_lo) - pi;
    }
  }
}
