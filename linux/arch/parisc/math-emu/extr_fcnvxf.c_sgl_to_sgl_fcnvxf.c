
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;


 int Find_ms_one_bit (int,int) ;
 int INEXACTEXCEPTION ;
 scalar_t__ Int_isinexact_to_sgl (int) ;
 int Int_negate (int) ;
 scalar_t__ Is_inexacttrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 scalar_t__ SGL_BIAS ;
 int SGL_EXP_LENGTH ;
 int Set_inexactflag () ;
 int Sgl_increment (unsigned int) ;
 int Sgl_isone_sign (unsigned int) ;
 int Sgl_iszero_sign (unsigned int) ;
 int Sgl_roundnearest_from_int (int,unsigned int) ;
 int Sgl_set_exponent (unsigned int,scalar_t__) ;
 int Sgl_set_mantissa (unsigned int,int) ;
 int Sgl_setone_sign (unsigned int) ;
 int Sgl_setzero (unsigned int) ;
 int Sgl_setzero_sign (unsigned int) ;

int
sgl_to_sgl_fcnvxf(
      int *srcptr,
      unsigned int *nullptr,
      sgl_floating_point *dstptr,
      unsigned int *status)
{
 register int src, dst_exponent;
 register unsigned int result = 0;

 src = *srcptr;



 if (src < 0) {
  Sgl_setone_sign(result);
  Int_negate(src);
 }
 else {
  Sgl_setzero_sign(result);

         if (src == 0) {
                 Sgl_setzero(result);
   *dstptr = result;
                 return(NOEXCEPTION);
         }
 }



 dst_exponent = 16;





 Find_ms_one_bit(src,dst_exponent);

 if (dst_exponent >= 0) src <<= dst_exponent;
 else src = 1 << 30;
 Sgl_set_mantissa(result, src >> (SGL_EXP_LENGTH-1));
 Sgl_set_exponent(result, 30+SGL_BIAS - dst_exponent);


 if (Int_isinexact_to_sgl(src)) {
  switch (Rounding_mode()) {
   case 128:
    if (Sgl_iszero_sign(result))
     Sgl_increment(result);
    break;
   case 130:
    if (Sgl_isone_sign(result))
     Sgl_increment(result);
    break;
   case 129:
    Sgl_roundnearest_from_int(src,result);
  }
  if (Is_inexacttrap_enabled()) {
   *dstptr = result;
   return(INEXACTEXCEPTION);
  }
  else Set_inexactflag();
 }
 *dstptr = result;
 return(NOEXCEPTION);
}
