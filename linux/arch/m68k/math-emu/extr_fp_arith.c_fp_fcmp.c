
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fp_ext {int sign; } ;
struct TYPE_2__ {struct fp_ext* temp; } ;


 TYPE_1__* FPDATA ;
 int PINSTR ;
 int dprint (int ,char*) ;
 struct fp_ext* fp_fadd (struct fp_ext*,struct fp_ext*) ;

struct fp_ext *
fp_fcmp(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "fcmp ");

 FPDATA->temp[1] = *dest;
 src->sign = !src->sign;
 return fp_fadd(&FPDATA->temp[1], src);
}
