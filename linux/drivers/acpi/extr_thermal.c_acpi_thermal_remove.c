
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_thermal {int dummy; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_thermal* acpi_driver_data (struct acpi_device*) ;
 int acpi_thermal_pm_queue ;
 int acpi_thermal_unregister_thermal_zone (struct acpi_thermal*) ;
 int flush_workqueue (int ) ;
 int kfree (struct acpi_thermal*) ;

__attribute__((used)) static int acpi_thermal_remove(struct acpi_device *device)
{
 struct acpi_thermal *tz = ((void*)0);

 if (!device || !acpi_driver_data(device))
  return -EINVAL;

 flush_workqueue(acpi_thermal_pm_queue);
 tz = acpi_driver_data(device);

 acpi_thermal_unregister_thermal_zone(tz);
 kfree(tz);
 return 0;
}
