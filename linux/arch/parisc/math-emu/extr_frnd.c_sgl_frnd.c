
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
 int SGL_INFINITY_EXPONENT ;
 int SGL_P ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Sgl_clear_exponent_set_hidden (unsigned int) ;
 int Sgl_exponent (unsigned int) ;
 int Sgl_increment (unsigned int) ;
 scalar_t__ Sgl_isinexact_to_fix (unsigned int,int) ;
 scalar_t__ Sgl_isnotzero_exponentmantissa (unsigned int) ;
 int Sgl_isnotzero_mantissa (unsigned int) ;
 scalar_t__ Sgl_isone_hiddenoverflow (unsigned int) ;
 int Sgl_isone_lowmantissa (unsigned int) ;
 int Sgl_isone_roundbit (unsigned int,int) ;
 int Sgl_isone_sign (unsigned int) ;
 scalar_t__ Sgl_isone_signaling (unsigned int) ;
 int Sgl_isone_stickybit (unsigned int,int) ;
 int Sgl_iszero_sign (unsigned int) ;
 int Sgl_leftshift (unsigned int,int) ;
 int Sgl_rightshift (unsigned int,int) ;
 int Sgl_set_exponent (unsigned int,int) ;
 int Sgl_set_quiet (unsigned int) ;
 int Sgl_setzero_exponentmantissa (unsigned int) ;
 scalar_t__ TRUE ;

int
sgl_frnd(sgl_floating_point *srcptr,
 unsigned int *nullptr,
 sgl_floating_point *dstptr,
 unsigned int *status)
{
 register unsigned int src, result;
 register int src_exponent;
 register boolean inexact = FALSE;

 src = *srcptr;



        if ((src_exponent = Sgl_exponent(src)) == SGL_INFINITY_EXPONENT) {



                if (Sgl_isone_signaling(src)) {

                        if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

                        Set_invalidflag();
                        Sgl_set_quiet(src);
                }



                *dstptr = src;
                return(NOEXCEPTION);
        }



 if ((src_exponent -= SGL_BIAS) >= SGL_P - 1) {
  *dstptr = src;
  return(NOEXCEPTION);
 }



 if (src_exponent >= 0) {
  Sgl_clear_exponent_set_hidden(src);
  result = src;
  Sgl_rightshift(result,(SGL_P-1) - (src_exponent));

  if (Sgl_isinexact_to_fix(src,src_exponent)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
        if (Sgl_iszero_sign(src)) Sgl_increment(result);
        break;
   case 130:
        if (Sgl_isone_sign(src)) Sgl_increment(result);
        break;
   case 129:
        if (Sgl_isone_roundbit(src,src_exponent))
           if (Sgl_isone_stickybit(src,src_exponent)
    || (Sgl_isone_lowmantissa(result)))
     Sgl_increment(result);
   }
  }
  Sgl_leftshift(result,(SGL_P-1) - (src_exponent));
  if (Sgl_isone_hiddenoverflow(result))
   Sgl_set_exponent(result,src_exponent + (SGL_BIAS+1));
  else Sgl_set_exponent(result,src_exponent + SGL_BIAS);
 }
 else {
  result = src;
  Sgl_setzero_exponentmantissa(result);

  if (Sgl_isnotzero_exponentmantissa(src)) {
   inexact = TRUE;

   switch (Rounding_mode()) {
   case 128:
        if (Sgl_iszero_sign(src))
    Sgl_set_exponent(result,SGL_BIAS);
        break;
   case 130:
        if (Sgl_isone_sign(src))
    Sgl_set_exponent(result,SGL_BIAS);
        break;
   case 129:
        if (src_exponent == -1)
           if (Sgl_isnotzero_mantissa(src))
       Sgl_set_exponent(result,SGL_BIAS);
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
