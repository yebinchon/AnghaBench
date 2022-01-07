
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
 int __LO (double) ;
 int __kernel_rem_pio2 (double*,double*,int,int,int) ;
 double fabs (double) ;
 scalar_t__ half ;
 double invpio2 ;
 int* npio2_hw ;
 double pio2_1 ;
 double pio2_1t ;
 double pio2_2 ;
 double pio2_2t ;
 double pio2_3 ;
 double pio2_3t ;
 double two24 ;
 double zero ;

__attribute__((used)) static int
__ieee754_rem_pio2 (double x, double *y)
{
  double_accessor z;
  double w, t, r, fn;
  double tx[3];
  int e0, i, j, nx, n, ix, hx;

  hx = __HI (x);
  ix = hx & 0x7fffffff;
  if (ix <= 0x3fe921fb)
  {
    y[0] = x;
    y[1] = 0;
    return 0;
  }
  if (ix < 0x4002d97c)
  {
    if (hx > 0)
    {
      z.dbl = x - pio2_1;
      if (ix != 0x3ff921fb)
      {
        y[0] = z.dbl - pio2_1t;
        y[1] = (z.dbl - y[0]) - pio2_1t;
      }
      else
      {
        z.dbl -= pio2_2;
        y[0] = z.dbl - pio2_2t;
        y[1] = (z.dbl - y[0]) - pio2_2t;
      }
      return 1;
    }
    else
    {
      z.dbl = x + pio2_1;
      if (ix != 0x3ff921fb)
      {
        y[0] = z.dbl + pio2_1t;
        y[1] = (z.dbl - y[0]) + pio2_1t;
      }
      else
      {
        z.dbl += pio2_2;
        y[0] = z.dbl + pio2_2t;
        y[1] = (z.dbl - y[0]) + pio2_2t;
      }
      return -1;
    }
  }
  if (ix <= 0x413921fb)
  {
    t = fabs (x);
    n = (int) (t * invpio2 + half);
    fn = (double) n;
    r = t - fn * pio2_1;
    w = fn * pio2_1t;
    if (n < 32 && ix != npio2_hw[n - 1])
    {
      y[0] = r - w;
    }
    else
    {
      j = ix >> 20;
      y[0] = r - w;
      i = j - (((__HI (y[0])) >> 20) & 0x7ff);
      if (i > 16)
      {
        t = r;
        w = fn * pio2_2;
        r = t - w;
        w = fn * pio2_2t - ((t - r) - w);
        y[0] = r - w;
        i = j - (((__HI (y[0])) >> 20) & 0x7ff);
        if (i > 49)
        {
          t = r;
          w = fn * pio2_3;
          r = t - w;
          w = fn * pio2_3t - ((t - r) - w);
          y[0] = r - w;
        }
      }
    }
    y[1] = (r - y[0]) - w;
    if (hx < 0)
    {
      y[0] = -y[0];
      y[1] = -y[1];
      return -n;
    }
    else
    {
      return n;
    }
  }



  if (ix >= 0x7ff00000)
  {
    y[0] = y[1] = x - x;
    return 0;
  }

  z.as_int.lo = __LO (x);
  e0 = (ix >> 20) - 1046;
  z.as_int.hi = ix - (e0 << 20);
  for (i = 0; i < 2; i++)
  {
    tx[i] = (double) ((int) (z.dbl));
    z.dbl = (z.dbl - tx[i]) * two24;
  }
  tx[2] = z.dbl;
  nx = 3;
  while (tx[nx - 1] == zero)
  {
    nx--;
  }
  n = __kernel_rem_pio2 (tx, y, e0, nx, 2);
  if (hx < 0)
  {
    y[0] = -y[0];
    y[1] = -y[1];
    return -n;
  }
  return n;
}
