
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int iosf_mbi_pmic_bus_access_notifier ;
 int iosf_mbi_punit_acquire () ;
 int iosf_mbi_punit_release () ;

int iosf_mbi_register_pmic_bus_access_notifier(struct notifier_block *nb)
{
 int ret;


 iosf_mbi_punit_acquire();
 ret = blocking_notifier_chain_register(
    &iosf_mbi_pmic_bus_access_notifier, nb);
 iosf_mbi_punit_release();

 return ret;
}
