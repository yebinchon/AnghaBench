
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_unsigned ;
typedef int dbl_floating_point ;


 scalar_t__ DBL_BIAS ;
 unsigned int DBL_EXP_LENGTH ;
 int Dbl_copytoptr (unsigned int,unsigned int,int *) ;
 int Dbl_increment (unsigned int,unsigned int) ;
 int Dbl_roundnearest_from_duint (unsigned int,unsigned int,unsigned int) ;
 int Dbl_set_exponent (unsigned int,scalar_t__) ;
 int Dbl_set_mantissap1 (unsigned int,unsigned int) ;
 int Dbl_setzero (unsigned int,unsigned int) ;
 int Duint_copyfromptr (int *,unsigned int,unsigned int) ;
 scalar_t__ Duint_isinexact_to_dbl (unsigned int) ;
 int Find_ms_one_bit (unsigned int,int) ;
 int INEXACTEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 int Set_inexactflag () ;
 int Shiftdouble (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int Variable_shift_double (unsigned int,unsigned int,int,unsigned int) ;

int
dbl_to_dbl_fcnvuf(
      dbl_unsigned *srcptr,
      unsigned int *nullptr,
      dbl_floating_point *dstptr,
      unsigned int *status)
{
 register int dst_exponent;
 register unsigned int srcp1, srcp2, resultp1 = 0, resultp2 = 0;

 Duint_copyfromptr(srcptr,srcp1,srcp2);


 if (srcp1 == 0 && srcp2 ==0) {
         Dbl_setzero(resultp1,resultp2);
         Dbl_copytoptr(resultp1,resultp2,dstptr);
         return(NOEXCEPTION);
 }



 dst_exponent = 16;
 if (srcp1 == 0) {





  Find_ms_one_bit(srcp2,dst_exponent);

  srcp1 = srcp2 << dst_exponent+1;
  srcp2 = 0;




  dst_exponent += 32;
 }
 else {





  Find_ms_one_bit(srcp1,dst_exponent);

  if (dst_exponent >= 0) {
   Variable_shift_double(srcp1,srcp2,(31-dst_exponent),
    srcp1);
   srcp2 <<= dst_exponent+1;
  }
 }
 Dbl_set_mantissap1(resultp1, srcp1 >> DBL_EXP_LENGTH);
 Shiftdouble(srcp1,srcp2,DBL_EXP_LENGTH,resultp2);
 Dbl_set_exponent(resultp1, (62+DBL_BIAS) - dst_exponent);


 if (Duint_isinexact_to_dbl(srcp2)) {
  switch (Rounding_mode()) {
   case 128:
    Dbl_increment(resultp1,resultp2);
    break;
   case 130:
    break;
   case 129:
    Dbl_roundnearest_from_duint(srcp2,resultp1,
    resultp2);
    break;
  }
  if (Is_inexacttrap_enabled()) {
   Dbl_copytoptr(resultp1,resultp2,dstptr);
   return(INEXACTEXCEPTION);
  }
  else Set_inexactflag();
 }
 Dbl_copytoptr(resultp1,resultp2,dstptr);
 return(NOEXCEPTION);
}
