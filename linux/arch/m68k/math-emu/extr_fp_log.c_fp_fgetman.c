
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {int exp; } ;


 scalar_t__ IS_INF (struct fp_ext*) ;
 scalar_t__ IS_ZERO (struct fp_ext*) ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_monadic_check (struct fp_ext*,struct fp_ext*) ;

struct fp_ext *
fp_fgetman(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "fgetman\n");

 fp_monadic_check(dest, src);

 if (IS_ZERO(dest))
  return dest;

 if (IS_INF(dest))
  return dest;

 dest->exp = 0x3FFF;

 return dest;
}
