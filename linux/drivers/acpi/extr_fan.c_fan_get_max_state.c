
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct acpi_device* devdata; } ;
struct acpi_fan {int fps_count; scalar_t__ acpi4; } ;
struct acpi_device {int dummy; } ;


 struct acpi_fan* acpi_driver_data (struct acpi_device*) ;

__attribute__((used)) static int fan_get_max_state(struct thermal_cooling_device *cdev, unsigned long
        *state)
{
 struct acpi_device *device = cdev->devdata;
 struct acpi_fan *fan = acpi_driver_data(device);

 if (fan->acpi4)
  *state = fan->fps_count - 1;
 else
  *state = 1;
 return 0;
}
