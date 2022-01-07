
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;


 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 int Int_from_sgl_mantissa (unsigned int,int) ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int NOEXCEPTION ;
 int SGL_BIAS ;
 int SGL_FX_MAX_EXP ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Sgl_all (unsigned int) ;
 int Sgl_clear_signexponent_set_hidden (unsigned int) ;
 int Sgl_exponent (unsigned int) ;
 scalar_t__ Sgl_isinexact_to_fix (unsigned int,int) ;
 scalar_t__ Sgl_isnotzero_exponentmantissa (unsigned int) ;
 scalar_t__ Sgl_isnotzero_mantissa (unsigned int) ;
 scalar_t__ Sgl_isone_sign (unsigned int) ;
 scalar_t__ Sgl_iszero_sign (unsigned int) ;

int
sgl_to_sgl_fcnvfxt(
      sgl_floating_point *srcptr,
      unsigned int *nullptr,
      int *dstptr,
      unsigned int *status)
{
 register unsigned int src, temp;
 register int src_exponent, result;

 src = *srcptr;
 src_exponent = Sgl_exponent(src) - SGL_BIAS;




 if (src_exponent > SGL_FX_MAX_EXP) {

  if ((src_exponent > SGL_FX_MAX_EXP + 1) ||
  Sgl_isnotzero_mantissa(src) || Sgl_iszero_sign(src)) {
                        if (Sgl_iszero_sign(src)) result = 0x7fffffff;
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
  temp = src;
  Sgl_clear_signexponent_set_hidden(temp);
  Int_from_sgl_mantissa(temp,src_exponent);
  if (Sgl_isone_sign(src)) result = -Sgl_all(temp);
  else result = Sgl_all(temp);
  *dstptr = result;


  if (Sgl_isinexact_to_fix(src,src_exponent)) {
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
