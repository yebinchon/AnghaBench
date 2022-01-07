
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;


 int Find_ms_one_bit (unsigned int,int) ;
 int INEXACTEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 int NOEXCEPTION ;



 int Rounding_mode () ;
 scalar_t__ SGL_BIAS ;
 unsigned int SGL_EXP_LENGTH ;
 int Set_inexactflag () ;
 int Sgl_increment (unsigned int) ;
 int Sgl_roundnearest_from_suint (unsigned int,unsigned int) ;
 int Sgl_set_exponent (unsigned int,scalar_t__) ;
 int Sgl_set_mantissa (unsigned int,unsigned int) ;
 int Sgl_setzero (unsigned int) ;
 scalar_t__ Suint_isinexact_to_sgl (unsigned int) ;

int
sgl_to_sgl_fcnvuf(
   unsigned int *srcptr,
   unsigned int *nullptr,
   sgl_floating_point *dstptr,
   unsigned int *status)
{
 register unsigned int src, result = 0;
 register int dst_exponent;

 src = *srcptr;


 if (src == 0) {
         Sgl_setzero(result);
  *dstptr = result;
         return(NOEXCEPTION);
 }



 dst_exponent = 16;





 Find_ms_one_bit(src,dst_exponent);

 src <<= dst_exponent+1;
 Sgl_set_mantissa(result, src >> SGL_EXP_LENGTH);
 Sgl_set_exponent(result, 30+SGL_BIAS - dst_exponent);


 if (Suint_isinexact_to_sgl(src)) {
  switch (Rounding_mode()) {
   case 128:
    Sgl_increment(result);
    break;
   case 130:
    break;
   case 129:
    Sgl_roundnearest_from_suint(src,result);
    break;
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
