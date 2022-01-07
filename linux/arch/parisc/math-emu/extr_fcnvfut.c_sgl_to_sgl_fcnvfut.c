
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;


 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;
 int SGL_BIAS ;
 int SGL_FX_MAX_EXP ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Sgl_clear_signexponent_set_hidden (unsigned int) ;
 int Sgl_exponent (unsigned int) ;
 scalar_t__ Sgl_isinexact_to_unsigned (unsigned int,int) ;
 scalar_t__ Sgl_isnotzero_exponentmantissa (unsigned int) ;
 scalar_t__ Sgl_isone_sign (unsigned int) ;
 int Suint_from_sgl_mantissa (unsigned int,int,unsigned int) ;

int
sgl_to_sgl_fcnvfut (sgl_floating_point * srcptr, unsigned int *nullptr,
      unsigned int *dstptr, unsigned int *status)
{
 register unsigned int src, result;
 register int src_exponent;

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
  *dstptr = result;


  if (Sgl_isinexact_to_unsigned(src,src_exponent)) {
   if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
   else Set_inexactflag();
  }
 }
 else {
  *dstptr = 0;


  if (Sgl_isnotzero_exponentmantissa(src)) {
   if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
   else Set_inexactflag();
  }
 }
 return(NOEXCEPTION);
}
