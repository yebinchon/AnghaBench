
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ieee754sp {int dummy; } ieee754sp ;
typedef union ieee754dp {int dummy; } ieee754dp ;
typedef int u32 ;
struct TYPE_2__ {int rm; int nan2008; } ;


 int COMPXDP ;
 int COMPYSP ;
 int DP_FBITS ;
 int EXPLODEXDP ;
 int EXPLODEYSP ;
 int FLUSHXDP ;
 int FPU_CSR_RD ;
 int FPU_CSR_RU ;






 int IEEE754_INEXACT ;
 int IEEE754_UNDERFLOW ;
 int SP_FBITS ;
 int ieee754_class_nan (int ) ;
 int ieee754_clearcx () ;
 TYPE_1__ ieee754_csr ;
 int ieee754_setcx (int ) ;
 union ieee754dp ieee754dp_nanxcpt (union ieee754dp) ;
 union ieee754sp ieee754sp_format (int ,int ,int) ;
 union ieee754sp ieee754sp_indef () ;
 union ieee754sp ieee754sp_inf (int ) ;
 union ieee754sp ieee754sp_mind (int ) ;
 union ieee754sp ieee754sp_nan_fdp (int ,int) ;
 union ieee754sp ieee754sp_zero (int ) ;
 int xc ;
 int xe ;
 int xm ;
 int xs ;
 int yc ;

union ieee754sp ieee754sp_fdp(union ieee754dp x)
{
 union ieee754sp y;
 u32 rm;

 COMPXDP;
 COMPYSP;

 EXPLODEXDP;

 ieee754_clearcx();

 FLUSHXDP;

 switch (xc) {
 case 129:
  x = ieee754dp_nanxcpt(x);
  EXPLODEXDP;


 case 130:
  y = ieee754sp_nan_fdp(xs, xm);
  if (!ieee754_csr.nan2008) {
   EXPLODEYSP;
   if (!ieee754_class_nan(yc))
    y = ieee754sp_indef();
  }
  return y;

 case 132:
  return ieee754sp_inf(xs);

 case 128:
  return ieee754sp_zero(xs);

 case 133:

  ieee754_setcx(IEEE754_UNDERFLOW);
  ieee754_setcx(IEEE754_INEXACT);
  if ((ieee754_csr.rm == FPU_CSR_RU && !xs) ||
    (ieee754_csr.rm == FPU_CSR_RD && xs))
   return ieee754sp_mind(xs);
  return ieee754sp_zero(xs);

 case 131:
  break;
 }




 rm = (xm >> (DP_FBITS - (SP_FBITS + 3))) |
      ((xm << (64 - (DP_FBITS - (SP_FBITS + 3)))) != 0);

 return ieee754sp_format(xs, xe, rm);
}
