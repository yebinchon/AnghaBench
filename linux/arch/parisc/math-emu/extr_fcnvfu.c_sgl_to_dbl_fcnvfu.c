
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;
typedef int dbl_unsigned ;
typedef scalar_t__ boolean ;


 int DBL_FX_MAX_EXP ;
 int Duint_copytoptr (unsigned int,unsigned int,int *) ;
 int Duint_from_sgl_mantissa (unsigned int,int,unsigned int,unsigned int) ;
 int Duint_increment (unsigned int,unsigned int) ;
 int Duint_isone_lowp2 (unsigned int) ;
 int Duint_setzero (unsigned int,unsigned int) ;
 scalar_t__ FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 int SGL_BIAS ;
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
 scalar_t__ TRUE ;

int
sgl_to_dbl_fcnvfu(
      sgl_floating_point *srcptr,
      unsigned int *nullptr,
      dbl_unsigned *dstptr,
      unsigned int *status)
{
 register int src_exponent;
 register unsigned int src, resultp1, resultp2;
 register boolean inexact = FALSE;

 src = *srcptr;
 src_exponent = Sgl_exponent(src) - SGL_BIAS;




 if (src_exponent > DBL_FX_MAX_EXP + 1) {
  if (Sgl_isone_sign(src)) {
   resultp1 = resultp2 = 0;
  } else {
   resultp1 = resultp2 = 0xffffffff;
  }
  if (Is_invalidtrap_enabled()) {
   return(INVALIDEXCEPTION);
  }
  Set_invalidflag();
      Duint_copytoptr(resultp1,resultp2,dstptr);
  return(NOEXCEPTION);
 }



 if (src_exponent >= 0) {




  if (Sgl_isone_sign(src)) {
   resultp1 = resultp2 = 0;
   if (Is_invalidtrap_enabled()) {
    return(INVALIDEXCEPTION);
   }
   Set_invalidflag();
       Duint_copytoptr(resultp1,resultp2,dstptr);
   return(NOEXCEPTION);
  }
  Sgl_clear_signexponent_set_hidden(src);
  Duint_from_sgl_mantissa(src,src_exponent,resultp1,resultp2);


  if (Sgl_isinexact_to_unsigned(src,src_exponent)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
    Duint_increment(resultp1,resultp2);
    break;
   case 130:
    break;
   case 129:
    if (Sgl_isone_roundbit(src,src_exponent) &&
        (Sgl_isone_stickybit(src,src_exponent) ||
         Duint_isone_lowp2(resultp2))) {
     Duint_increment(resultp1,resultp2);
    }
    break;
   }
  }
 } else {
  Duint_setzero(resultp1,resultp2);


  if (Sgl_isnotzero_exponentmantissa(src)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
    if (Sgl_iszero_sign(src)) {
     Duint_increment(resultp1,resultp2);
    }
    break;
   case 130:
    if (Sgl_isone_sign(src)) {
     resultp1 = resultp2 = 0;
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
      resultp1 = 0;
      resultp2 = 0;
      if (Is_invalidtrap_enabled()) {
       return(INVALIDEXCEPTION);
      }
      Set_invalidflag();
      inexact = FALSE;
     }
     else Duint_increment(resultp1,resultp2);
    }
   }
  }
 }
 Duint_copytoptr(resultp1,resultp2,dstptr);
 if (inexact) {
  if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
  else Set_inexactflag();
 }
 return(NOEXCEPTION);
}
