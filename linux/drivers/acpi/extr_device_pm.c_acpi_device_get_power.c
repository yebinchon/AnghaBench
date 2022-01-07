
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int bus_id; } ;
struct TYPE_8__ {int ignore_parent; scalar_t__ explicit_get; scalar_t__ power_resources; } ;
struct TYPE_9__ {TYPE_2__ flags; } ;
struct TYPE_7__ {int power_manageable; } ;
struct acpi_device {TYPE_6__ pnp; TYPE_5__* parent; TYPE_3__ power; TYPE_1__ flags; } ;
struct TYPE_10__ {int state; } ;
struct TYPE_11__ {TYPE_4__ power; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_STATE_D0 ;
 int ACPI_STATE_D2 ;
 int ACPI_STATE_D3_COLD ;
 int ACPI_STATE_D3_HOT ;
 int ACPI_STATE_UNKNOWN ;
 int EINVAL ;
 int acpi_dev_pm_explicit_get (struct acpi_device*,int*) ;
 int acpi_power_get_inferred_state (struct acpi_device*,int*) ;
 int acpi_power_state_string (int) ;

int acpi_device_get_power(struct acpi_device *device, int *state)
{
 int result = ACPI_STATE_UNKNOWN;
 int error;

 if (!device || !state)
  return -EINVAL;

 if (!device->flags.power_manageable) {

  *state = device->parent ?
   device->parent->power.state : ACPI_STATE_D0;
  goto out;
 }





 if (device->power.flags.power_resources) {
  error = acpi_power_get_inferred_state(device, &result);
  if (error)
   return error;
 }
 if (device->power.flags.explicit_get) {
  int psc;

  error = acpi_dev_pm_explicit_get(device, &psc);
  if (error)
   return error;
  if (psc > result && psc < ACPI_STATE_D3_COLD)
   result = psc;
  else if (result == ACPI_STATE_UNKNOWN)
   result = psc > ACPI_STATE_D2 ? ACPI_STATE_D3_HOT : psc;
 }






 if (!device->power.flags.ignore_parent && device->parent
     && device->parent->power.state == ACPI_STATE_UNKNOWN
     && result == ACPI_STATE_D0)
  device->parent->power.state = ACPI_STATE_D0;

 *state = result;

 out:
 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Device [%s] power state is %s\n",
     device->pnp.bus_id, acpi_power_state_string(*state)));

 return 0;
}
