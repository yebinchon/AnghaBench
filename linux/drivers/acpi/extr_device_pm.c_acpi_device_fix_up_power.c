
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int explicit_get; int power_resources; } ;
struct TYPE_4__ {scalar_t__ state; TYPE_1__ flags; } ;
struct acpi_device {TYPE_2__ power; } ;


 scalar_t__ ACPI_STATE_D0 ;
 int acpi_dev_pm_explicit_set (struct acpi_device*,scalar_t__) ;

int acpi_device_fix_up_power(struct acpi_device *device)
{
 int ret = 0;

 if (!device->power.flags.power_resources
     && !device->power.flags.explicit_get
     && device->power.state == ACPI_STATE_D0)
  ret = acpi_dev_pm_explicit_set(device, ACPI_STATE_D0);

 return ret;
}
