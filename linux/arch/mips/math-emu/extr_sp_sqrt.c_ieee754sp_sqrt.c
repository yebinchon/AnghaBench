
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ieee754sp {int bits; } ;
struct TYPE_2__ {int rm; } ;


 int COMPXSP ;
 int EXPLODEXSP ;
 int FLUSHXSP ;
 int IEEE754_INEXACT ;
 int IEEE754_INVALID_OPERATION ;
 int ieee754_clearcx () ;
 TYPE_1__ ieee754_csr ;
 int ieee754_setcx (int ) ;
 union ieee754sp ieee754sp_indef () ;
 union ieee754sp ieee754sp_nanxcpt (union ieee754sp) ;
 int xc ;
 int xs ;

union ieee754sp ieee754sp_sqrt(union ieee754sp x)
{
 int ix, s, q, m, t, i;
 unsigned int r;
 COMPXSP;



 EXPLODEXSP;
 ieee754_clearcx();
 FLUSHXSP;


 switch (xc) {
 case 129:
  return ieee754sp_nanxcpt(x);

 case 130:

  return x;

 case 128:

  return x;

 case 132:
  if (xs) {

   ieee754_setcx(IEEE754_INVALID_OPERATION);
   return ieee754sp_indef();
  }

  return x;

 case 133:
 case 131:
  if (xs) {

   ieee754_setcx(IEEE754_INVALID_OPERATION);
   return ieee754sp_indef();
  }
  break;
 }

 ix = x.bits;


 m = (ix >> 23);
 if (m == 0) {
  for (i = 0; (ix & 0x00800000) == 0; i++)
   ix <<= 1;
  m -= i - 1;
 }
 m -= 127;
 ix = (ix & 0x007fffff) | 0x00800000;
 if (m & 1)
  ix += ix;
 m >>= 1;


 ix += ix;
 s = 0;
 q = 0;
 r = 0x01000000;

 while (r != 0) {
  t = s + r;
  if (t <= ix) {
   s = t + r;
   ix -= t;
   q += r;
  }
  ix += ix;
  r >>= 1;
 }

 if (ix != 0) {
  ieee754_setcx(IEEE754_INEXACT);
  switch (ieee754_csr.rm) {
  case 134:
   q += 2;
   break;
  case 135:
   q += (q & 1);
   break;
  }
 }
 ix = (q >> 1) + 0x3f000000;
 ix += (m << 23);
 x.bits = ix;
 return x;
}
