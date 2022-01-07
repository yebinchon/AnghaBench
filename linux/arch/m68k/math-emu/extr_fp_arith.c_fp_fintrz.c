
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {int dummy; } ;


 int FPCR_ROUND_RZ ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_copy_ext (struct fp_ext*,struct fp_ext*) ;
 int fp_roundint (struct fp_ext*,int ) ;

struct fp_ext *
fp_fintrz(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "fintrz\n");

 fp_copy_ext(dest, src);

 fp_roundint(dest, FPCR_ROUND_RZ);

 return dest;
}
