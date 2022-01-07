
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAC_SUSPENDED ;
 int b15_rac_disable_and_flush () ;
 int b15_rac_flags ;
 int rac_config0_reg ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int b15_rac_suspend(void)
{







 rac_config0_reg = b15_rac_disable_and_flush();
 set_bit(RAC_SUSPENDED, &b15_rac_flags);

 return 0;
}
