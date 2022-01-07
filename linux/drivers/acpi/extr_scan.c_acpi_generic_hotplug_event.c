
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct acpi_device {int handle; int dev; TYPE_2__* handler; } ;
struct TYPE_3__ {int enabled; } ;
struct TYPE_4__ {TYPE_1__ hotplug; } ;






 int ACPI_OST_SC_EJECT_IN_PROGRESS ;
 int EINVAL ;
 int EPERM ;
 int acpi_evaluate_ost (int ,int const,int ,int *) ;
 int acpi_scan_bus_check (struct acpi_device*) ;
 int acpi_scan_device_check (struct acpi_device*) ;
 int acpi_scan_hot_remove (struct acpi_device*) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int acpi_generic_hotplug_event(struct acpi_device *adev, u32 type)
{
 switch (type) {
 case 131:
  return acpi_scan_bus_check(adev);
 case 130:
  return acpi_scan_device_check(adev);
 case 129:
 case 128:
  if (adev->handler && !adev->handler->hotplug.enabled) {
   dev_info(&adev->dev, "Eject disabled\n");
   return -EPERM;
  }
  acpi_evaluate_ost(adev->handle, 129,
      ACPI_OST_SC_EJECT_IN_PROGRESS, ((void*)0));
  return acpi_scan_hot_remove(adev);
 }
 return -EINVAL;
}
