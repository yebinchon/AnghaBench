
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_fan {unsigned long fps_count; TYPE_1__* fps; } ;
struct acpi_device {int dev; int handle; } ;
typedef int acpi_status ;
struct TYPE_2__ {int control; } ;


 scalar_t__ ACPI_FAILURE (int) ;
 int EINVAL ;
 struct acpi_fan* acpi_driver_data (struct acpi_device*) ;
 int acpi_execute_simple_method (int ,char*,int ) ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static int fan_set_state_acpi4(struct acpi_device *device, unsigned long state)
{
 struct acpi_fan *fan = acpi_driver_data(device);
 acpi_status status;

 if (state >= fan->fps_count)
  return -EINVAL;

 status = acpi_execute_simple_method(device->handle, "_FSL",
         fan->fps[state].control);
 if (ACPI_FAILURE(status)) {
  dev_dbg(&device->dev, "Failed to set state by _FSL\n");
  return status;
 }

 return 0;
}
