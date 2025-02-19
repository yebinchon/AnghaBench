
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_6__ {TYPE_2__* states; } ;
struct acpi_device {TYPE_3__ power; } ;
struct TYPE_4__ {scalar_t__ valid; } ;
struct TYPE_5__ {TYPE_1__ flags; struct list_head resources; } ;


 int ACPI_POWER_RESOURCE_STATE_ON ;
 int ACPI_STATE_D0 ;
 size_t ACPI_STATE_D3_COLD ;
 int ACPI_STATE_D3_HOT ;
 int EINVAL ;
 int acpi_power_get_list_state (struct list_head*,int*) ;
 scalar_t__ list_empty (struct list_head*) ;

int acpi_power_get_inferred_state(struct acpi_device *device, int *state)
{
 int result = 0;
 int list_state = 0;
 int i = 0;

 if (!device || !state)
  return -EINVAL;





 for (i = ACPI_STATE_D0; i <= ACPI_STATE_D3_HOT; i++) {
  struct list_head *list = &device->power.states[i].resources;

  if (list_empty(list))
   continue;

  result = acpi_power_get_list_state(list, &list_state);
  if (result)
   return result;

  if (list_state == ACPI_POWER_RESOURCE_STATE_ON) {
   *state = i;
   return 0;
  }
 }

 *state = device->power.states[ACPI_STATE_D3_COLD].flags.valid ?
  ACPI_STATE_D3_COLD : ACPI_STATE_D3_HOT;
 return 0;
}
