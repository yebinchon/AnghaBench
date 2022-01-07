
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ieee754dp {int bits; int bexp; } ;
typedef int u64 ;
struct _ieee754_csr {int mx; int sx; int rm; int cx; } ;


 int COMPXDP ;
 int DPDNORMX ;
 scalar_t__ DP_EBIAS ;
 int DP_HIDDEN_BIT ;
 int EXPLODEXDP ;
 int FLUSHXDP ;


 int FPU_CSR_RZ ;






 int IEEE754_INEXACT ;
 int IEEE754_INVALID_OPERATION ;
 union ieee754dp builddp (int ,scalar_t__,int) ;
 int ieee754_clearcx () ;
 struct _ieee754_csr ieee754_csr ;
 int ieee754_setcx (int ) ;
 union ieee754dp ieee754dp_add (union ieee754dp,union ieee754dp) ;
 union ieee754dp ieee754dp_div (union ieee754dp,union ieee754dp) ;
 union ieee754dp ieee754dp_indef () ;
 union ieee754dp ieee754dp_mul (union ieee754dp,union ieee754dp) ;
 union ieee754dp ieee754dp_nanxcpt (union ieee754dp) ;
 union ieee754dp ieee754dp_sub (union ieee754dp,union ieee754dp) ;
 unsigned int* table ;
 int xc ;
 int xe ;
 int xm ;
 int xs ;

union ieee754dp ieee754dp_sqrt(union ieee754dp x)
{
 struct _ieee754_csr oldcsr;
 union ieee754dp y, z, t;
 unsigned int scalx, yh;
 COMPXDP;

 EXPLODEXDP;
 ieee754_clearcx();
 FLUSHXDP;


 switch (xc) {
 case 129:
  return ieee754dp_nanxcpt(x);

 case 130:

  return x;

 case 128:

  return x;

 case 132:
  if (xs) {

   ieee754_setcx(IEEE754_INVALID_OPERATION);
   return ieee754dp_indef();
  }

  return x;

 case 133:
  DPDNORMX;


 case 131:
  if (xs) {

   ieee754_setcx(IEEE754_INVALID_OPERATION);
   return ieee754dp_indef();
  }
  break;
 }


 oldcsr = ieee754_csr;
 ieee754_csr.mx &= ~IEEE754_INEXACT;
 ieee754_csr.sx &= ~IEEE754_INEXACT;
 ieee754_csr.rm = 135;


 scalx = 0;
 if (xe > 512) {
  xe -= 512;
  scalx += 256;
 } else if (xe < -512) {
  xe += 512;
  scalx -= 256;
 }

 x = builddp(0, xe + DP_EBIAS, xm & ~DP_HIDDEN_BIT);
 y = x;


 yh = y.bits >> 32;
 yh = (yh >> 1) + 0x1ff80000;
 yh = yh - table[(yh >> 15) & 31];
 y.bits = ((u64) yh << 32) | (y.bits & 0xffffffff);



 t = ieee754dp_div(x, y);
 y = ieee754dp_add(y, t);
 y.bits -= 0x0010000600000000LL;
 y.bits &= 0xffffffff00000000LL;



 t = ieee754dp_mul(y, y);
 z = t;
 t.bexp += 0x001;
 t = ieee754dp_add(t, z);
 z = ieee754dp_mul(ieee754dp_sub(x, z), y);


 t = ieee754dp_div(z, ieee754dp_add(t, x));
 t.bexp += 0x001;
 y = ieee754dp_add(y, t);




 ieee754_csr.rm = FPU_CSR_RZ;
 ieee754_csr.sx &= ~IEEE754_INEXACT;


 t = ieee754dp_div(x, y);

 if (ieee754_csr.sx & IEEE754_INEXACT || t.bits != y.bits) {

  if (!(ieee754_csr.sx & IEEE754_INEXACT))

   t.bits -= 1;


  oldcsr.cx |= IEEE754_INEXACT;
  oldcsr.sx |= IEEE754_INEXACT;

  switch (oldcsr.rm) {
  case 134:
   y.bits += 1;

  case 135:
   t.bits += 1;
   break;
  }


  y = ieee754dp_add(y, t);


  scalx -= 1;
 }


 y.bexp += scalx;


 ieee754_csr = oldcsr;

 return y;
}
