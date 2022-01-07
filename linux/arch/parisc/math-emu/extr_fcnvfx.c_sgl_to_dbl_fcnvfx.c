
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;
typedef int dbl_integer ;
typedef scalar_t__ boolean ;


 int DBL_FX_MAX_EXP ;
 int Dint_copytoptr (int,unsigned int,int *) ;
 int Dint_decrement (int,unsigned int) ;
 int Dint_from_sgl_mantissa (unsigned int,int,int,unsigned int) ;
 int Dint_increment (int,unsigned int) ;
 int Dint_isone_lowp2 (unsigned int) ;
 int Dint_set_minint (int,unsigned int) ;
 int Dint_setone_sign (int,unsigned int) ;
 int Dint_setzero (int,unsigned int) ;
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
 scalar_t__ Sgl_isinexact_to_fix (unsigned int,int) ;
 scalar_t__ Sgl_isnotzero_exponentmantissa (unsigned int) ;
 scalar_t__ Sgl_isnotzero_mantissa (unsigned int) ;
 int Sgl_isone_roundbit (unsigned int,int) ;
 scalar_t__ Sgl_isone_sign (unsigned int) ;
 int Sgl_isone_stickybit (unsigned int,int) ;
 scalar_t__ Sgl_iszero_sign (unsigned int) ;
 scalar_t__ TRUE ;

int
sgl_to_dbl_fcnvfx(
  sgl_floating_point *srcptr,
  unsigned int *nullptr,
  dbl_integer *dstptr,
  unsigned int *status)
{
 register int src_exponent, resultp1;
 register unsigned int src, temp, resultp2;
 register boolean inexact = FALSE;

 src = *srcptr;
 src_exponent = Sgl_exponent(src) - SGL_BIAS;




 if (src_exponent > DBL_FX_MAX_EXP) {

  if ((src_exponent > DBL_FX_MAX_EXP + 1) ||
  Sgl_isnotzero_mantissa(src) || Sgl_iszero_sign(src)) {
                        if (Sgl_iszero_sign(src)) {
                              resultp1 = 0x7fffffff;
         resultp2 = 0xffffffff;
   }
                        else {
       resultp1 = 0x80000000;
       resultp2 = 0;
   }
                 if (Is_invalidtrap_enabled()) {
                            return(INVALIDEXCEPTION);
                        }
                        Set_invalidflag();
              Dint_copytoptr(resultp1,resultp2,dstptr);
   return(NOEXCEPTION);
  }
  Dint_set_minint(resultp1,resultp2);
  Dint_copytoptr(resultp1,resultp2,dstptr);
  return(NOEXCEPTION);
 }



 if (src_exponent >= 0) {
  temp = src;
  Sgl_clear_signexponent_set_hidden(temp);
  Dint_from_sgl_mantissa(temp,src_exponent,resultp1,resultp2);
  if (Sgl_isone_sign(src)) {
   Dint_setone_sign(resultp1,resultp2);
  }


  if (Sgl_isinexact_to_fix(src,src_exponent)) {
   inexact = TRUE;

                        switch (Rounding_mode()) {
                        case 128:
                             if (Sgl_iszero_sign(src)) {
    Dint_increment(resultp1,resultp2);
        }
                             break;
                        case 130:
                             if (Sgl_isone_sign(src)) {
    Dint_decrement(resultp1,resultp2);
        }
                             break;
                        case 129:
                             if (Sgl_isone_roundbit(src,src_exponent))
                                if (Sgl_isone_stickybit(src,src_exponent) ||
    (Dint_isone_lowp2(resultp2)))
       if (Sgl_iszero_sign(src)) {
          Dint_increment(resultp1,resultp2);
       }
                                   else {
          Dint_decrement(resultp1,resultp2);
       }
                        }
                }
        }
 else {
  Dint_setzero(resultp1,resultp2);


  if (Sgl_isnotzero_exponentmantissa(src)) {
   inexact = TRUE;

                        switch (Rounding_mode()) {
                        case 128:
                             if (Sgl_iszero_sign(src)) {
    Dint_increment(resultp1,resultp2);
        }
                             break;
                        case 130:
                             if (Sgl_isone_sign(src)) {
    Dint_decrement(resultp1,resultp2);
        }
                             break;
                        case 129:
                             if (src_exponent == -1)
                                if (Sgl_isnotzero_mantissa(src))
                                   if (Sgl_iszero_sign(src)) {
          Dint_increment(resultp1,resultp2);
       }
                                   else {
          Dint_decrement(resultp1,resultp2);
       }
   }
  }
 }
 Dint_copytoptr(resultp1,resultp2,dstptr);
 if (inexact) {
  if (Is_inexacttrap_enabled()) return(INEXACTEXCEPTION);
  else Set_inexactflag();
 }
 return(NOEXCEPTION);
}
