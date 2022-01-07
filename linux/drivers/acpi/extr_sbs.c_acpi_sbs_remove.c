
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_sbs {int lock; int hc; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 int MAX_SBS_BAT ;
 int acpi_battery_remove (struct acpi_sbs*,int) ;
 int acpi_charger_remove (struct acpi_sbs*) ;
 struct acpi_sbs* acpi_driver_data (struct acpi_device*) ;
 int acpi_smbus_unregister_callback (int ) ;
 int kfree (struct acpi_sbs*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acpi_sbs_remove(struct acpi_device *device)
{
 struct acpi_sbs *sbs;
 int id;

 if (!device)
  return -EINVAL;
 sbs = acpi_driver_data(device);
 if (!sbs)
  return -EINVAL;
 mutex_lock(&sbs->lock);
 acpi_smbus_unregister_callback(sbs->hc);
 for (id = 0; id < MAX_SBS_BAT; ++id)
  acpi_battery_remove(sbs, id);
 acpi_charger_remove(sbs);
 mutex_unlock(&sbs->lock);
 mutex_destroy(&sbs->lock);
 kfree(sbs);
 return 0;
}
