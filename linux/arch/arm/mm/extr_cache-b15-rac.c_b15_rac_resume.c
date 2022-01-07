
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAC_SUSPENDED ;
 int __b15_rac_enable (int ) ;
 int b15_rac_flags ;
 int clear_bit (int ,int *) ;
 int rac_config0_reg ;

__attribute__((used)) static void b15_rac_resume(void)
{





 __b15_rac_enable(rac_config0_reg);
 clear_bit(RAC_SUSPENDED, &b15_rac_flags);
}
