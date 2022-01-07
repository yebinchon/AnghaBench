
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;


 int KOBJ_ADD ;
 int dev_set_uevent_suppress (TYPE_1__*,int) ;
 int kobject_uevent (int *,int ) ;

void acpi_device_add_finalize(struct acpi_device *device)
{
 dev_set_uevent_suppress(&device->dev, 0);
 kobject_uevent(&device->dev.kobj, KOBJ_ADD);
}
