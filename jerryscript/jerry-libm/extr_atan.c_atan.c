
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __HI (double) ;
 scalar_t__ __LO (double) ;
 double aT0 ;
 double aT1 ;
 double aT10 ;
 double aT2 ;
 double aT3 ;
 double aT4 ;
 double aT5 ;
 double aT6 ;
 double aT7 ;
 double aT8 ;
 double aT9 ;
 double* atanhi ;
 double* atanlo ;
 double fabs (double) ;
 double huge ;
 double one ;

double
atan (double x)
{
  double w, s1, s2, z;
  int ix, hx, id;

  hx = __HI (x);
  ix = hx & 0x7fffffff;
  if (ix >= 0x44100000)
  {
    if (ix > 0x7ff00000 || (ix == 0x7ff00000 && (__LO (x) != 0)))
    {
      return x + x;
    }
    if (hx > 0)
    {
      return atanhi[3] + atanlo[3];
    }
    else
    {
      return -atanhi[3] - atanlo[3];
    }
  }
  if (ix < 0x3fdc0000)
  {
    if (ix < 0x3e200000)
    {
      if (huge + x > one)
      {
        return x;
      }
    }
    id = -1;
  }
  else
  {
    x = fabs (x);
    if (ix < 0x3ff30000)
    {
      if (ix < 0x3fe60000)
      {
        id = 0;
        x = (2.0 * x - one) / (2.0 + x);
      }
      else
      {
        id = 1;
        x = (x - one) / (x + one);
      }
    }
    else
    {
      if (ix < 0x40038000)
      {
        id = 2;
        x = (x - 1.5) / (one + 1.5 * x);
      }
      else
      {
        id = 3;
        x = -1.0 / x;
      }
    }
  }

  z = x * x;
  w = z * z;

  s1 = z * (aT0 + w * (aT2 + w * (aT4 + w * (aT6 + w * (aT8 + w * aT10)))));
  s2 = w * (aT1 + w * (aT3 + w * (aT5 + w * (aT7 + w * aT9))));
  if (id < 0)
  {
    return x - x * (s1 + s2);
  }
  else
  {
    z = atanhi[id] - ((x * (s1 + s2) - atanlo[id]) - x);
    return (hx < 0) ? -z : z;
  }
}
