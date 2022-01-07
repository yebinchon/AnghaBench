
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __HI (double) ;
 int __ieee754_rem_pio2 (double,double*) ;
 double __kernel_tan (double,double,int) ;

double
tan (double x)
{
  double y[2], z = 0.0;
  int n, ix;


  ix = __HI (x);


  ix &= 0x7fffffff;
  if (ix <= 0x3fe921fb)
  {
    return __kernel_tan (x, z, 1);
  }


  else if (ix >= 0x7ff00000)
  {
    return x - x;
  }


  else
  {
    n = __ieee754_rem_pio2 (x, y);
    return __kernel_tan (y[0], y[1], 1 - ((n & 1) << 1));
  }
}
