
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ power_resources; } ;
struct TYPE_5__ {int state; TYPE_1__ flags; } ;
struct TYPE_6__ {int initialized; } ;
struct acpi_device {TYPE_2__ power; TYPE_3__ flags; } ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3_COLD ;
 int ACPI_STATE_UNKNOWN ;
 int EINVAL ;
 int ENXIO ;
 int acpi_dev_pm_explicit_set (struct acpi_device*,int) ;
 int acpi_device_get_power (struct acpi_device*,int*) ;
 int acpi_device_is_present (struct acpi_device*) ;
 int acpi_power_on_resources (struct acpi_device*,int) ;

int acpi_bus_init_power(struct acpi_device *device)
{
 int state;
 int result;

 if (!device)
  return -EINVAL;

 device->power.state = ACPI_STATE_UNKNOWN;
 if (!acpi_device_is_present(device)) {
  device->flags.initialized = 0;
  return -ENXIO;
 }

 result = acpi_device_get_power(device, &state);
 if (result)
  return result;

 if (state < ACPI_STATE_D3_COLD && device->power.flags.power_resources) {

  result = acpi_power_on_resources(device, state);
  if (result)
   return result;

  if (state == ACPI_STATE_D0) {
   result = acpi_dev_pm_explicit_set(device, state);
   if (result)
    return result;
  }
 } else if (state == ACPI_STATE_UNKNOWN) {






  state = ACPI_STATE_D0;
 }
 device->power.state = state;
 return 0;
}
