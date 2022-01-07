
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;


 int FRn ;
 int _FP_EXPBIAS_S ;
 int _FP_FRACBITS_S ;

__attribute__((used)) static int fld1(struct sh_fpu_soft_struct *fregs, int n)
{
 FRn = (_FP_EXPBIAS_S << (_FP_FRACBITS_S - 1));
 return 0;
}
