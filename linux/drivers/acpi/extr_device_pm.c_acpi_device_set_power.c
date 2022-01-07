
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int bus_id; } ;
struct TYPE_14__ {int explicit_get; scalar_t__ power_resources; int ignore_parent; } ;
struct TYPE_15__ {int state; TYPE_6__ flags; TYPE_3__* states; } ;
struct TYPE_9__ {int power_manageable; } ;
struct acpi_device {TYPE_8__ pnp; TYPE_7__ power; int dev; TYPE_5__* parent; int handle; TYPE_1__ flags; } ;
struct TYPE_12__ {int state; } ;
struct TYPE_13__ {TYPE_4__ power; } ;
struct TYPE_10__ {int valid; } ;
struct TYPE_11__ {TYPE_2__ flags; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3_COLD ;
 int ACPI_STATE_D3_HOT ;
 int EINVAL ;
 int ENODEV ;
 int acpi_dev_pm_explicit_get (struct acpi_device*,int*) ;
 int acpi_dev_pm_explicit_set (struct acpi_device*,int) ;
 int acpi_handle_debug (int ,char*,int ,int ) ;
 int acpi_power_state_string (int) ;
 int acpi_power_transition (struct acpi_device*,int) ;
 int dev_warn (int *,char*,int ,...) ;

int acpi_device_set_power(struct acpi_device *device, int state)
{
 int target_state = state;
 int result = 0;

 if (!device || !device->flags.power_manageable
     || (state < ACPI_STATE_D0) || (state > ACPI_STATE_D3_COLD))
  return -EINVAL;

 acpi_handle_debug(device->handle, "Power state change: %s -> %s\n",
     acpi_power_state_string(device->power.state),
     acpi_power_state_string(state));




 if (state > ACPI_STATE_D0 && state == device->power.state) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Device [%s] already in %s\n",
      device->pnp.bus_id,
      acpi_power_state_string(state)));
  return 0;
 }

 if (state == ACPI_STATE_D3_COLD) {




  state = ACPI_STATE_D3_HOT;

  if (!device->power.states[ACPI_STATE_D3_COLD].flags.valid)
   target_state = state;
 } else if (!device->power.states[state].flags.valid) {
  dev_warn(&device->dev, "Power state %s not supported\n",
    acpi_power_state_string(state));
  return -ENODEV;
 }

 if (!device->power.flags.ignore_parent &&
     device->parent && (state < device->parent->power.state)) {
  dev_warn(&device->dev,
    "Cannot transition to power state %s for parent in %s\n",
    acpi_power_state_string(state),
    acpi_power_state_string(device->parent->power.state));
  return -ENODEV;
 }
 if (state > ACPI_STATE_D0) {




  if (state < device->power.state) {
   dev_warn(&device->dev, "Cannot transition from %s to %s\n",
     acpi_power_state_string(device->power.state),
     acpi_power_state_string(state));
   return -ENODEV;
  }





  if (device->power.state < ACPI_STATE_D3_HOT) {
   result = acpi_dev_pm_explicit_set(device, state);
   if (result)
    goto end;
  }

  if (device->power.flags.power_resources)
   result = acpi_power_transition(device, target_state);
 } else {
  int cur_state = device->power.state;

  if (device->power.flags.power_resources) {
   result = acpi_power_transition(device, ACPI_STATE_D0);
   if (result)
    goto end;
  }

  if (cur_state == ACPI_STATE_D0) {
   int psc;


   if (!device->power.flags.explicit_get)
    return 0;
   result = acpi_dev_pm_explicit_get(device, &psc);
   if (result || psc == ACPI_STATE_D0)
    return 0;
  }

  result = acpi_dev_pm_explicit_set(device, ACPI_STATE_D0);
 }

 end:
 if (result) {
  dev_warn(&device->dev, "Failed to change power state to %s\n",
    acpi_power_state_string(state));
 } else {
  device->power.state = target_state;
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Device [%s] transitioned to %s\n",
      device->pnp.bus_id,
      acpi_power_state_string(state)));
 }

 return result;
}
