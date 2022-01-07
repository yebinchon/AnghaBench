
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean ;


 int DBL_WRAP ;
 int Dbl_denormalize (unsigned int,unsigned int,int,scalar_t__,scalar_t__,scalar_t__) ;
 int Dbl_exponent (unsigned int) ;
 int Dbl_increment (unsigned int,unsigned int) ;
 int Dbl_isone_lowmantissap2 (unsigned int) ;
 int Dbl_set_sign (unsigned int,int) ;
 int Dbl_sign (unsigned int) ;
 scalar_t__ FALSE ;




void
dbl_denormalize(unsigned int *dbl_opndp1,
 unsigned int * dbl_opndp2,
 boolean *inexactflag,
 int rmode)
{
 unsigned int opndp1, opndp2;
 int sign, exponent;
 boolean guardbit = FALSE, stickybit, inexact;

 opndp1 = *dbl_opndp1;
 opndp2 = *dbl_opndp2;
 stickybit = *inexactflag;
 exponent = Dbl_exponent(opndp1) - DBL_WRAP;
 sign = Dbl_sign(opndp1);
 Dbl_denormalize(opndp1,opndp2,exponent,guardbit,stickybit,inexact);
 if (inexact) {
     switch (rmode) {
       case 128:
  if (sign == 0) {
   Dbl_increment(opndp1,opndp2);
  }
  break;
       case 130:
  if (sign != 0) {
   Dbl_increment(opndp1,opndp2);
  }
  break;
       case 129:
  if (guardbit && (stickybit ||
         Dbl_isone_lowmantissap2(opndp2))) {
      Dbl_increment(opndp1,opndp2);
  }
  break;
     }
 }
 Dbl_set_sign(opndp1,sign);
 *dbl_opndp1 = opndp1;
 *dbl_opndp2 = opndp2;
 *inexactflag = inexact;
 return;
}
