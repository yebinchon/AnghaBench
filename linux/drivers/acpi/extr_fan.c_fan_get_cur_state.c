
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_fan {scalar_t__ acpi4; } ;
struct acpi_device {int dummy; } ;


 struct acpi_fan* acpi_driver_data (struct acpi_device*) ;
 int fan_get_state (struct acpi_device*,unsigned long*) ;
 int fan_get_state_acpi4 (struct acpi_device*,unsigned long*) ;

__attribute__((used)) static int fan_get_cur_state(struct thermal_cooling_device *cdev, unsigned long
        *state)
{
 struct acpi_device *device = cdev->devdata;
 struct acpi_fan *fan = acpi_driver_data(device);

 if (fan->acpi4)
  return fan_get_state_acpi4(device, state);
 else
  return fan_get_state(device, state);
}
