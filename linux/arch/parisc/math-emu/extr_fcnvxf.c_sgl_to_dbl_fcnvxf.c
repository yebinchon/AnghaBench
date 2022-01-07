
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_floating_point ;


 scalar_t__ DBL_BIAS ;
 int DBL_EXP_LENGTH ;
 int Dbl_copytoptr (unsigned int,unsigned int,int *) ;
 int Dbl_set_exponent (unsigned int,scalar_t__) ;
 int Dbl_set_mantissap1 (unsigned int,int) ;
 int Dbl_set_mantissap2 (unsigned int,int) ;
 int Dbl_setone_sign (unsigned int) ;
 int Dbl_setzero (unsigned int,unsigned int) ;
 int Dbl_setzero_sign (unsigned int) ;
 int Find_ms_one_bit (int,int) ;
 int Int_negate (int) ;
 int NOEXCEPTION ;

int
sgl_to_dbl_fcnvxf(
      int *srcptr,
      unsigned int *nullptr,
      dbl_floating_point *dstptr,
      unsigned int *status)
{
 register int src, dst_exponent;
 register unsigned int resultp1 = 0, resultp2 = 0;

 src = *srcptr;



 if (src < 0) {
  Dbl_setone_sign(resultp1);
  Int_negate(src);
 }
 else {
  Dbl_setzero_sign(resultp1);

         if (src == 0) {
                 Dbl_setzero(resultp1,resultp2);
                 Dbl_copytoptr(resultp1,resultp2,dstptr);
                 return(NOEXCEPTION);
         }
 }



 dst_exponent = 16;





 Find_ms_one_bit(src,dst_exponent);

 if (dst_exponent >= 0) src <<= dst_exponent;
 else src = 1 << 30;
 Dbl_set_mantissap1(resultp1, src >> DBL_EXP_LENGTH - 1);
 Dbl_set_mantissap2(resultp2, src << (33-DBL_EXP_LENGTH));
 Dbl_set_exponent(resultp1, (30+DBL_BIAS) - dst_exponent);
 Dbl_copytoptr(resultp1,resultp2,dstptr);
 return(NOEXCEPTION);
}
