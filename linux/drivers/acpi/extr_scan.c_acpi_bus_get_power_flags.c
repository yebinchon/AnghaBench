
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_10__ {int power_manageable; } ;
struct TYPE_6__ {int explicit_get; int inrush_current; int dsw_present; } ;
struct TYPE_9__ {TYPE_3__* states; TYPE_1__ flags; } ;
struct acpi_device {TYPE_5__ flags; TYPE_4__ power; int handle; } ;
struct TYPE_7__ {int valid; } ;
struct TYPE_8__ {int power; TYPE_2__ flags; int resources; } ;


 size_t ACPI_STATE_D0 ;
 size_t ACPI_STATE_D3_COLD ;
 size_t ACPI_STATE_D3_HOT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ acpi_bus_init_power (struct acpi_device*) ;
 int acpi_bus_init_power_state (struct acpi_device*,size_t) ;
 scalar_t__ acpi_has_method (int ,char*) ;
 int list_empty (int *) ;

__attribute__((used)) static void acpi_bus_get_power_flags(struct acpi_device *device)
{
 u32 i;


 if (!acpi_has_method(device->handle, "_PS0") &&
     !acpi_has_method(device->handle, "_PR0"))
  return;

 device->flags.power_manageable = 1;




 if (acpi_has_method(device->handle, "_PSC"))
  device->power.flags.explicit_get = 1;

 if (acpi_has_method(device->handle, "_IRC"))
  device->power.flags.inrush_current = 1;

 if (acpi_has_method(device->handle, "_DSW"))
  device->power.flags.dsw_present = 1;




 for (i = ACPI_STATE_D0; i <= ACPI_STATE_D3_HOT; i++)
  acpi_bus_init_power_state(device, i);

 INIT_LIST_HEAD(&device->power.states[ACPI_STATE_D3_COLD].resources);
 if (!list_empty(&device->power.states[ACPI_STATE_D3_HOT].resources))
  device->power.states[ACPI_STATE_D3_COLD].flags.valid = 1;


 device->power.states[ACPI_STATE_D0].flags.valid = 1;
 device->power.states[ACPI_STATE_D0].power = 100;
 device->power.states[ACPI_STATE_D3_HOT].flags.valid = 1;

 if (acpi_bus_init_power(device))
  device->flags.power_manageable = 0;
}
