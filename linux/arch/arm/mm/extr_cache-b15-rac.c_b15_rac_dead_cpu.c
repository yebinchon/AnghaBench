
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAC_ENABLED ;
 int RAC_SUSPENDED ;
 int __b15_rac_enable (int ) ;
 int __set_bit (int ,int *) ;
 int b15_rac_flags ;
 int rac_config0_reg ;
 int rac_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int b15_rac_dead_cpu(unsigned int cpu)
{



 if (test_bit(RAC_SUSPENDED, &b15_rac_flags))
  return 0;

 spin_lock(&rac_lock);


 __b15_rac_enable(rac_config0_reg);
 __set_bit(RAC_ENABLED, &b15_rac_flags);

 spin_unlock(&rac_lock);

 return 0;
}
