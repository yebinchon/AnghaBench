
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;
typedef scalar_t__ boolean ;


 scalar_t__ FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 int SGL_BIAS ;
 int SGL_FX_MAX_EXP ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Sgl_clear_signexponent_set_hidden (unsigned int) ;
 int Sgl_exponent (unsigned int) ;
 scalar_t__ Sgl_isinexact_to_unsigned (unsigned int,int) ;
 scalar_t__ Sgl_isnotzero_exponentmantissa (unsigned int) ;
 int Sgl_isnotzero_mantissa (unsigned int) ;
 int Sgl_isone_roundbit (unsigned int,int) ;
 scalar_t__ Sgl_isone_sign (unsigned int) ;
 int Sgl_isone_stickybit (unsigned int,int) ;
 int Sgl_iszero_sign (unsigned int) ;
 int Suint_from_sgl_mantissa (unsigned int,int,unsigned int) ;
 scalar_t__ TRUE ;

int
sgl_to_sgl_fcnvfu(
   sgl_floating_point *srcptr,
   unsigned int *nullptr,
   unsigned int *dstptr,
   unsigned int *status)
{
 register unsigned int src, result;
 register int src_exponent;
 register boolean inexact = FALSE;

 src = *srcptr;
 src_exponent = Sgl_exponent(src) - SGL_BIAS;




 if (src_exponent > SGL_FX_MAX_EXP + 1) {
  if (Sgl_isone_sign(src)) {
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




  if (Sgl_isone_sign(src)) {
   result = 0;
   if (Is_invalidtrap_enabled()) {
    return(INVALIDEXCEPTION);
   }
   Set_invalidflag();
   *dstptr = result;
   return(NOEXCEPTION);
  }
  Sgl_clear_signexponent_set_hidden(src);
  Suint_from_sgl_mantissa(src,src_exponent,result);


  if (Sgl_isinexact_to_unsigned(src,src_exponent)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
    result++;
    break;
   case 130:
    break;
   case 129:
    if (Sgl_isone_roundbit(src,src_exponent) &&
        (Sgl_isone_stickybit(src,src_exponent) ||
         (result & 1))) {
          result++;
    }
    break;
   }
  }
 } else {
  result = 0;


  if (Sgl_isnotzero_exponentmantissa(src)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
    if (Sgl_iszero_sign(src)) {
     result++;
    }
    break;
   case 130:
    if (Sgl_isone_sign(src)) {
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
        Sgl_isnotzero_mantissa(src)) {
     if (Sgl_isone_sign(src)) {
      result = 0;
      if (Is_invalidtrap_enabled()) {
       return(INVALIDEXCEPTION);
      }
      Set_invalidflag();
      inexact = FALSE;
     }
           else result++;
    }
    break;
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
