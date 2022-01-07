
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dev; } ;
struct acpi_battery {int sysfs_lock; int lock; int pm_nb; } ;


 int EINVAL ;
 int acpi_battery_remove_fs (struct acpi_device*) ;
 struct acpi_battery* acpi_driver_data (struct acpi_device*) ;
 int device_init_wakeup (int *,int ) ;
 int kfree (struct acpi_battery*) ;
 int mutex_destroy (int *) ;
 int sysfs_remove_battery (struct acpi_battery*) ;
 int unregister_pm_notifier (int *) ;

__attribute__((used)) static int acpi_battery_remove(struct acpi_device *device)
{
 struct acpi_battery *battery = ((void*)0);

 if (!device || !acpi_driver_data(device))
  return -EINVAL;
 device_init_wakeup(&device->dev, 0);
 battery = acpi_driver_data(device);
 unregister_pm_notifier(&battery->pm_nb);



 sysfs_remove_battery(battery);
 mutex_destroy(&battery->lock);
 mutex_destroy(&battery->sysfs_lock);
 kfree(battery);
 return 0;
}
