
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int iosf_mbi_punit_acquire () ;
 int iosf_mbi_punit_release () ;
 int iosf_mbi_unregister_pmic_bus_access_notifier_unlocked (struct notifier_block*) ;

int iosf_mbi_unregister_pmic_bus_access_notifier(struct notifier_block *nb)
{
 int ret;


 iosf_mbi_punit_acquire();
 ret = iosf_mbi_unregister_pmic_bus_access_notifier_unlocked(nb);
 iosf_mbi_punit_release();

 return ret;
}
