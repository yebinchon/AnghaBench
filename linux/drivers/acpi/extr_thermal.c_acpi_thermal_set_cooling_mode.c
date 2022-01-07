
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_thermal {TYPE_1__* device; } ;
struct TYPE_2__ {int handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int ENODEV ;
 int acpi_execute_simple_method (int ,char*,int) ;

__attribute__((used)) static int acpi_thermal_set_cooling_mode(struct acpi_thermal *tz, int mode)
{
 if (!tz)
  return -EINVAL;

 if (ACPI_FAILURE(acpi_execute_simple_method(tz->device->handle,
          "_SCP", mode)))
  return -ENODEV;

 return 0;
}
