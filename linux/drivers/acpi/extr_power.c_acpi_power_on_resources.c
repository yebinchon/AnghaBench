
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* states; } ;
struct acpi_device {TYPE_2__ power; } ;
struct TYPE_3__ {int resources; } ;


 int ACPI_STATE_D0 ;
 int ACPI_STATE_D3_HOT ;
 int EINVAL ;
 int acpi_power_on_list (int *) ;

int acpi_power_on_resources(struct acpi_device *device, int state)
{
 if (!device || state < ACPI_STATE_D0 || state > ACPI_STATE_D3_HOT)
  return -EINVAL;

 return acpi_power_on_list(&device->power.states[state].resources);
}
