
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int iosf_mbi_assert_punit_acquired () ;
 int iosf_mbi_pmic_bus_access_notifier ;

int iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(
 struct notifier_block *nb)
{
 iosf_mbi_assert_punit_acquired();

 return blocking_notifier_chain_unregister(
    &iosf_mbi_pmic_bus_access_notifier, nb);
}
