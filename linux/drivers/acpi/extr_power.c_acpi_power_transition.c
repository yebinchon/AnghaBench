
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int state; TYPE_2__* states; } ;
struct TYPE_4__ {int power_manageable; } ;
struct acpi_device {TYPE_3__ power; TYPE_1__ flags; } ;
struct TYPE_5__ {int resources; } ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3_COLD ;
 int ACPI_STATE_UNKNOWN ;
 int EINVAL ;
 int ENODEV ;
 int acpi_power_off_list (int *) ;
 int acpi_power_on_list (int *) ;

int acpi_power_transition(struct acpi_device *device, int state)
{
 int result = 0;

 if (!device || (state < ACPI_STATE_D0) || (state > ACPI_STATE_D3_COLD))
  return -EINVAL;

 if (device->power.state == state || !device->flags.power_manageable)
  return 0;

 if ((device->power.state < ACPI_STATE_D0)
     || (device->power.state > ACPI_STATE_D3_COLD))
  return -ENODEV;






 if (state < ACPI_STATE_D3_COLD)
  result = acpi_power_on_list(
   &device->power.states[state].resources);

 if (!result && device->power.state < ACPI_STATE_D3_COLD)
  acpi_power_off_list(
   &device->power.states[device->power.state].resources);


 device->power.state = result ? ACPI_STATE_UNKNOWN : state;

 return result;
}
