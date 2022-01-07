
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean ;


 scalar_t__ FALSE ;



 int SGL_WRAP ;
 int Sgl_denormalize (unsigned int,int,scalar_t__,scalar_t__,scalar_t__) ;
 int Sgl_exponent (unsigned int) ;
 int Sgl_increment (unsigned int) ;
 int Sgl_isone_lowmantissa (unsigned int) ;
 int Sgl_set_sign (unsigned int,int) ;
 int Sgl_sign (unsigned int) ;

void
sgl_denormalize(unsigned int *sgl_opnd, boolean *inexactflag, int rmode)
{
 unsigned int opnd;
 int sign, exponent;
 boolean guardbit = FALSE, stickybit, inexact;

 opnd = *sgl_opnd;
 stickybit = *inexactflag;
        exponent = Sgl_exponent(opnd) - SGL_WRAP;
        sign = Sgl_sign(opnd);
 Sgl_denormalize(opnd,exponent,guardbit,stickybit,inexact);
 if (inexact) {
     switch (rmode) {
       case 128:
  if (sign == 0) {
   Sgl_increment(opnd);
  }
  break;
       case 130:
  if (sign != 0) {
   Sgl_increment(opnd);
  }
  break;
       case 129:
  if (guardbit && (stickybit ||
         Sgl_isone_lowmantissa(opnd))) {
      Sgl_increment(opnd);
  }
  break;
     }
 }
 Sgl_set_sign(opnd,sign);
 *sgl_opnd = opnd;
 *inexactflag = inexact;
 return;
}
