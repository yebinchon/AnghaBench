
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
struct acpi_ac {int battery_nb; int charger; } ;


 int EINVAL ;
 int acpi_ac_remove_fs (struct acpi_ac*) ;
 struct acpi_ac* acpi_driver_data (struct acpi_device*) ;
 int kfree (struct acpi_ac*) ;
 int power_supply_unregister (int ) ;
 int unregister_acpi_notifier (int *) ;

__attribute__((used)) static int acpi_ac_remove(struct acpi_device *device)
{
 struct acpi_ac *ac = ((void*)0);


 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 ac = acpi_driver_data(device);

 power_supply_unregister(ac->charger);
 unregister_acpi_notifier(&ac->battery_nb);





 kfree(ac);

 return 0;
}
