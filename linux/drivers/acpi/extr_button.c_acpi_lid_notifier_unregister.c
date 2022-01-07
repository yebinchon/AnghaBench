
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int acpi_lid_notifier ;
 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

int acpi_lid_notifier_unregister(struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&acpi_lid_notifier, nb);
}
