
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_floating_point ;
typedef scalar_t__ boolean ;


 int DBL_BIAS ;
 int Dbl_allp1 (unsigned int) ;
 int Dbl_clear_signexponent_set_hidden (unsigned int) ;
 int Dbl_copyfromptr (int *,unsigned int,unsigned int) ;
 int Dbl_exponent (unsigned int) ;
 scalar_t__ Dbl_isinexact_to_fix (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isnotzero_exponentmantissa (unsigned int,unsigned int) ;
 int Dbl_isnotzero_mantissa (unsigned int,unsigned int) ;
 int Dbl_isone_lowmantissap1 (unsigned int) ;
 int Dbl_isone_roundbit (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isone_sign (unsigned int) ;
 int Dbl_isone_stickybit (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isoverflow_to_int (int,unsigned int,unsigned int) ;
 scalar_t__ Dbl_iszero_sign (unsigned int) ;
 scalar_t__ FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 int Int_from_dbl_mantissa (unsigned int,unsigned int,int) ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 int SGL_FX_MAX_EXP ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 scalar_t__ TRUE ;

int
dbl_to_sgl_fcnvfx(
      dbl_floating_point *srcptr,
      unsigned int *nullptr,
      int *dstptr,
      unsigned int *status)
{
 register unsigned int srcp1,srcp2, tempp1,tempp2;
 register int src_exponent, result;
 register boolean inexact = FALSE;

 Dbl_copyfromptr(srcptr,srcp1,srcp2);
 src_exponent = Dbl_exponent(srcp1) - DBL_BIAS;




 if (src_exponent > SGL_FX_MAX_EXP) {

  if (Dbl_isoverflow_to_int(src_exponent,srcp1,srcp2)) {
                        if (Dbl_iszero_sign(srcp1)) result = 0x7fffffff;
                        else result = 0x80000000;

                 if (Is_invalidtrap_enabled()) {
                            return(INVALIDEXCEPTION);
                        }
                        Set_invalidflag();
   *dstptr = result;
   return(NOEXCEPTION);
  }
 }



 if (src_exponent >= 0) {
  tempp1 = srcp1;
  tempp2 = srcp2;
  Dbl_clear_signexponent_set_hidden(tempp1);
  Int_from_dbl_mantissa(tempp1,tempp2,src_exponent);
  if (Dbl_isone_sign(srcp1) && (src_exponent <= SGL_FX_MAX_EXP))
   result = -Dbl_allp1(tempp1);
  else result = Dbl_allp1(tempp1);


  if (Dbl_isinexact_to_fix(srcp1,srcp2,src_exponent)) {
                        inexact = TRUE;

                        switch (Rounding_mode()) {
                        case 128:
                             if (Dbl_iszero_sign(srcp1)) result++;
                             break;
                        case 130:
                             if (Dbl_isone_sign(srcp1)) result--;
                             break;
                        case 129:
                             if (Dbl_isone_roundbit(srcp1,srcp2,src_exponent))
                                if (Dbl_isone_stickybit(srcp1,srcp2,src_exponent) ||
    (Dbl_isone_lowmantissap1(tempp1)))
                                   if (Dbl_iszero_sign(srcp1)) result++;
                                   else result--;
                        }

   if ((Dbl_iszero_sign(srcp1) && result < 0) ||
       (Dbl_isone_sign(srcp1) && result > 0)) {

                          if (Dbl_iszero_sign(srcp1)) result = 0x7fffffff;
                          else result = 0x80000000;

                   if (Is_invalidtrap_enabled()) {
                            return(INVALIDEXCEPTION);
                          }
                          Set_invalidflag();
     *dstptr = result;
     return(NOEXCEPTION);
   }
                }
 }
 else {
  result = 0;


  if (Dbl_isnotzero_exponentmantissa(srcp1,srcp2)) {
                        inexact = TRUE;

                        switch (Rounding_mode()) {
                        case 128:
                             if (Dbl_iszero_sign(srcp1)) result++;
                             break;
                        case 130:
                             if (Dbl_isone_sign(srcp1)) result--;
                             break;
                        case 129:
                             if (src_exponent == -1)
                                if (Dbl_isnotzero_mantissa(srcp1,srcp2))
                                   if (Dbl_iszero_sign(srcp1)) result++;
                                   else result--;
   }
                }
 }
 *dstptr = result;
        if (inexact) {
                if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
  else Set_inexactflag();
        }
 return(NOEXCEPTION);
}
