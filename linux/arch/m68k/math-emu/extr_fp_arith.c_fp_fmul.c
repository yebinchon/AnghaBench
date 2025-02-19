
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union fp_mant128 {scalar_t__* m32; } ;
struct TYPE_2__ {scalar_t__* m32; scalar_t__ m64; } ;
struct fp_ext {int sign; int exp; TYPE_1__ mant; scalar_t__ lowmant; } ;


 int FPSR_EXC_UNFL ;
 scalar_t__ IS_INF (struct fp_ext*) ;
 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_copy_ext (struct fp_ext*,struct fp_ext*) ;
 int fp_denormalize (struct fp_ext*,int) ;
 int fp_dyadic_check (struct fp_ext*,struct fp_ext*) ;
 int fp_multiplymant (union fp_mant128*,struct fp_ext*,struct fp_ext*) ;
 scalar_t__ fp_overnormalize (struct fp_ext*) ;
 int fp_putmant128 (struct fp_ext*,union fp_mant128*,int) ;
 int fp_set_nan (struct fp_ext*) ;
 int fp_set_ovrflw (struct fp_ext*) ;
 int fp_set_sr (int ) ;

struct fp_ext *
fp_fmul(struct fp_ext *dest, struct fp_ext *src)
{
 union fp_mant128 temp;
 int exp;

 dprint(PINSTR, "fmul\n");

 fp_dyadic_check(dest, src);


 dest->sign = src->sign ^ dest->sign;


 if (IS_INF(dest)) {
  if (IS_ZERO(src))
   fp_set_nan(dest);
  return dest;
 }
 if (IS_INF(src)) {
  if (IS_ZERO(dest))
   fp_set_nan(dest);
  else
   fp_copy_ext(dest, src);
  return dest;
 }




 if (IS_ZERO(dest) || IS_ZERO(src)) {
  dest->exp = 0;
  dest->mant.m64 = 0;
  dest->lowmant = 0;

  return dest;
 }

 exp = dest->exp + src->exp - 0x3ffe;




 if ((long)dest->mant.m32[0] >= 0)
  exp -= fp_overnormalize(dest);
 if ((long)src->mant.m32[0] >= 0)
  exp -= fp_overnormalize(src);


 fp_multiplymant(&temp, dest, src);



 if ((long)temp.m32[0] > 0) {
  exp--;
  fp_putmant128(dest, &temp, 1);
 } else
  fp_putmant128(dest, &temp, 0);

 if (exp >= 0x7fff) {
  fp_set_ovrflw(dest);
  return dest;
 }
 dest->exp = exp;
 if (exp < 0) {
  fp_set_sr(FPSR_EXC_UNFL);
  fp_denormalize(dest, -exp);
 }

 return dest;
}
