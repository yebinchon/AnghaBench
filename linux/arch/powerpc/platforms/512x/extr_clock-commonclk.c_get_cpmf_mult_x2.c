
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spmr; } ;


 TYPE_1__* clkregs ;
 int get_bit_field (int *,int,int) ;
 scalar_t__ soc_has_cpmf_0_bypass () ;

__attribute__((used)) static int get_cpmf_mult_x2(void)
{
 static int cpmf_to_mult_x36[] = {

  72, 2, 2, 3, 4, 5, 6, 7,
 };
 static int cpmf_to_mult_0by[] = {

  2, 2, 2, 3, 4, 5, 6, 7,
 };

 int *cpmf_to_mult;
 int cpmf;

 cpmf = get_bit_field(&clkregs->spmr, 16, 4);
 if (soc_has_cpmf_0_bypass())
  cpmf_to_mult = cpmf_to_mult_0by;
 else
  cpmf_to_mult = cpmf_to_mult_x36;
 return cpmf_to_mult[cpmf];
}
