
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {int exp; scalar_t__ sign; } ;


 scalar_t__ IS_INF (struct fp_ext*) ;
 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_copy_ext (struct fp_ext*,struct fp_ext*) ;
 int fp_fadd (struct fp_ext*,struct fp_ext*) ;
 int fp_fdiv (struct fp_ext*,struct fp_ext*) ;
 int fp_monadic_check (struct fp_ext*,struct fp_ext*) ;
 struct fp_ext fp_one ;
 int fp_set_nan (struct fp_ext*) ;

struct fp_ext *
fp_fsqrt(struct fp_ext *dest, struct fp_ext *src)
{
 struct fp_ext tmp, src2;
 int i, exp;

 dprint(PINSTR, "fsqrt\n");

 fp_monadic_check(dest, src);

 if (IS_ZERO(dest))
  return dest;

 if (dest->sign) {
  fp_set_nan(dest);
  return dest;
 }
 if (IS_INF(dest))
  return dest;
 exp = dest->exp;
 dest->exp = 0x3FFF;
 if (!(exp & 1))
  dest->exp++;
 fp_copy_ext(&src2, dest);
 fp_fadd(dest, &fp_one);
 dest->exp--;
 for (i = 0; i < 9; i++) {
  fp_copy_ext(&tmp, &src2);

  fp_fdiv(&tmp, dest);
  fp_fadd(dest, &tmp);
  dest->exp--;
 }

 dest->exp += (exp - 0x3FFF) / 2;

 return dest;
}
