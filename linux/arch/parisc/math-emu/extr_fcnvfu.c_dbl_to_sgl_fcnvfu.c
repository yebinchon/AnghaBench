
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_floating_point ;
typedef scalar_t__ boolean ;


 int DBL_BIAS ;
 int Dbl_clear_signexponent_set_hidden (unsigned int) ;
 int Dbl_copyfromptr (int *,unsigned int,unsigned int) ;
 int Dbl_exponent (unsigned int) ;
 scalar_t__ Dbl_isinexact_to_unsigned (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isnotzero_exponentmantissa (unsigned int,unsigned int) ;
 int Dbl_isnotzero_mantissa (unsigned int,unsigned int) ;
 int Dbl_isone_roundbit (unsigned int,unsigned int,int) ;
 scalar_t__ Dbl_isone_sign (unsigned int) ;
 int Dbl_isone_stickybit (unsigned int,unsigned int,int) ;
 int Dbl_iszero_sign (unsigned int) ;
 scalar_t__ FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 int SGL_FX_MAX_EXP ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Suint_from_dbl_mantissa (unsigned int,unsigned int,int,unsigned int) ;
 scalar_t__ TRUE ;

int
dbl_to_sgl_fcnvfu (dbl_floating_point * srcptr, unsigned int *nullptr,
     unsigned int *dstptr, unsigned int *status)
{
 register unsigned int srcp1, srcp2, result;
 register int src_exponent;
 register boolean inexact = FALSE;

 Dbl_copyfromptr(srcptr,srcp1,srcp2);
 src_exponent = Dbl_exponent(srcp1) - DBL_BIAS;




 if (src_exponent > SGL_FX_MAX_EXP + 1) {
  if (Dbl_isone_sign(srcp1)) {
   result = 0;
  } else {
   result = 0xffffffff;
  }
  if (Is_invalidtrap_enabled()) {
   return(INVALIDEXCEPTION);
  }
  Set_invalidflag();
  *dstptr = result;
  return(NOEXCEPTION);
 }



 if (src_exponent >= 0) {




  if (Dbl_isone_sign(srcp1)) {
   result = 0;
   if (Is_invalidtrap_enabled()) {
    return(INVALIDEXCEPTION);
   }
   Set_invalidflag();
   *dstptr = result;
   return(NOEXCEPTION);
  }
  Dbl_clear_signexponent_set_hidden(srcp1);
  Suint_from_dbl_mantissa(srcp1,srcp2,src_exponent,result);


  if (Dbl_isinexact_to_unsigned(srcp1,srcp2,src_exponent)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
        result++;
        break;
   case 130:
        break;
   case 129:
        if(Dbl_isone_roundbit(srcp1,srcp2,src_exponent) &&
    (Dbl_isone_stickybit(srcp1,srcp2,src_exponent)||
     result&1))
       result++;
        break;
   }

   if (result == 0) {
    result = 0xffffffff;
    if (Is_invalidtrap_enabled()) {
     return(INVALIDEXCEPTION);
    }
    Set_invalidflag();
    *dstptr = result;
    return(NOEXCEPTION);
   }
  }
 } else {
  result = 0;


  if (Dbl_isnotzero_exponentmantissa(srcp1,srcp2)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
    if (Dbl_iszero_sign(srcp1)) result++;
    break;
   case 130:
    if (Dbl_isone_sign(srcp1)) {
     result = 0;
     if (Is_invalidtrap_enabled()) {
      return(INVALIDEXCEPTION);
     }
     Set_invalidflag();
     inexact = FALSE;
    }
    break;
   case 129:
    if (src_exponent == -1 &&
        Dbl_isnotzero_mantissa(srcp1,srcp2))
     if (Dbl_isone_sign(srcp1)) {
      result = 0;
      if (Is_invalidtrap_enabled()) {
       return(INVALIDEXCEPTION);
      }
      Set_invalidflag();
      inexact = FALSE;
     }
     else result++;
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
