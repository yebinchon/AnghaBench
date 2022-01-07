
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acpi_device_power_state {int resources; } ;
struct TYPE_7__ {int power_resources; } ;
struct TYPE_8__ {struct acpi_device_power_state* states; TYPE_3__ flags; } ;
struct TYPE_5__ {scalar_t__ valid; } ;
struct TYPE_6__ {int resources; TYPE_1__ flags; } ;
struct acpi_device {TYPE_4__ power; TYPE_2__ wakeup; } ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3_HOT ;
 int acpi_power_resources_list_free (int *) ;

__attribute__((used)) static void acpi_free_power_resources_lists(struct acpi_device *device)
{
 int i;

 if (device->wakeup.flags.valid)
  acpi_power_resources_list_free(&device->wakeup.resources);

 if (!device->power.flags.power_resources)
  return;

 for (i = ACPI_STATE_D0; i <= ACPI_STATE_D3_HOT; i++) {
  struct acpi_device_power_state *ps = &device->power.states[i];
  acpi_power_resources_list_free(&ps->resources);
 }
}
