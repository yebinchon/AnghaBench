
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {int dummy; } ;


 int fp_monadic_check (struct fp_ext*,struct fp_ext*) ;
 int uprint (char*) ;

struct fp_ext *
fp_flognp1(struct fp_ext *dest, struct fp_ext *src)
{
 uprint("flognp1\n");

 fp_monadic_check(dest, src);

 return dest;
}
