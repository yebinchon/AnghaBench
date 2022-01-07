
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fp_ext {int dummy; } ;
struct TYPE_2__ {int rnd; } ;


 TYPE_1__* FPDATA ;
 int PINSTR ;
 int dprint (int ,char*) ;
 int fp_copy_ext (struct fp_ext*,struct fp_ext*) ;
 int fp_roundint (struct fp_ext*,int ) ;

struct fp_ext *
fp_fint(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "fint\n");

 fp_copy_ext(dest, src);

 fp_roundint(dest, FPDATA->rnd);

 return dest;
}
