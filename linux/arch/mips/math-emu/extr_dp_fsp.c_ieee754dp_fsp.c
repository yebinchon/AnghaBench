
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ieee754sp {int dummy; } ieee754sp ;
typedef union ieee754dp {int dummy; } ieee754dp ;
typedef int u64 ;


 int COMPXSP ;
 scalar_t__ DP_EBIAS ;
 int DP_FBITS ;
 int EXPLODEXSP ;
 int FLUSHXSP ;






 int SP_FBITS ;
 int SP_HIDDEN_BIT ;
 union ieee754dp builddp (int ,scalar_t__,int) ;
 int ieee754_clearcx () ;
 union ieee754dp ieee754dp_inf (int ) ;
 union ieee754dp ieee754dp_nan_fsp (int ,int) ;
 union ieee754dp ieee754dp_nanxcpt (union ieee754dp) ;
 union ieee754dp ieee754dp_zero (int ) ;
 int xc ;
 scalar_t__ xe ;
 int xm ;
 int xs ;

union ieee754dp ieee754dp_fsp(union ieee754sp x)
{
 COMPXSP;

 EXPLODEXSP;

 ieee754_clearcx();

 FLUSHXSP;

 switch (xc) {
 case 129:
  return ieee754dp_nanxcpt(ieee754dp_nan_fsp(xs, xm));

 case 130:
  return ieee754dp_nan_fsp(xs, xm);

 case 132:
  return ieee754dp_inf(xs);

 case 128:
  return ieee754dp_zero(xs);

 case 133:

  while ((xm >> SP_FBITS) == 0) {
   xm <<= 1;
   xe--;
  }
  break;

 case 131:
  break;
 }






 xm &= ~SP_HIDDEN_BIT;

 return builddp(xs, xe + DP_EBIAS,
         (u64) xm << (DP_FBITS - SP_FBITS));
}
