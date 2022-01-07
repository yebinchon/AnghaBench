
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ieee754sp {int bits; } ;


 int COMPXSP ;
 int COMPYSP ;
 int EXPLODEXSP ;
 int EXPLODEYSP ;
 int FLUSHXSP ;
 int FLUSHYSP ;
 int IEEE754_CEQ ;
 int IEEE754_CGT ;
 scalar_t__ IEEE754_CLASS_SNAN ;
 int IEEE754_CLT ;
 int IEEE754_CUN ;
 int IEEE754_INVALID_OPERATION ;
 int SP_SIGN_BIT ;
 scalar_t__ ieee754_class_nan (scalar_t__) ;
 int ieee754_clearcx () ;
 int ieee754_setcx (int ) ;
 scalar_t__ xc ;
 scalar_t__ yc ;

int ieee754sp_cmp(union ieee754sp x, union ieee754sp y, int cmp, int sig)
{
 int vx;
 int vy;

 COMPXSP;
 COMPYSP;

 EXPLODEXSP;
 EXPLODEYSP;
 FLUSHXSP;
 FLUSHYSP;
 ieee754_clearcx();

 if (ieee754_class_nan(xc) || ieee754_class_nan(yc)) {
  if (sig ||
      xc == IEEE754_CLASS_SNAN || yc == IEEE754_CLASS_SNAN)
   ieee754_setcx(IEEE754_INVALID_OPERATION);
  return (cmp & IEEE754_CUN) != 0;
 } else {
  vx = x.bits;
  vy = y.bits;

  if (vx < 0)
   vx = -vx ^ SP_SIGN_BIT;
  if (vy < 0)
   vy = -vy ^ SP_SIGN_BIT;

  if (vx < vy)
   return (cmp & IEEE754_CLT) != 0;
  else if (vx == vy)
   return (cmp & IEEE754_CEQ) != 0;
  else
   return (cmp & IEEE754_CGT) != 0;
 }
}
