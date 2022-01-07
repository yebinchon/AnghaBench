
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int attr; } ;


 int acpi_disable_gpe (int *,int ) ;
 int acpi_remove_gpe_handler (int *,int ,int ) ;
 int cancel_work_sync (int *) ;
 TYPE_2__ lid_wake_on_close_attr ;
 int sci_work ;
 int sysfs_remove_file (int *,int *) ;
 int xo15_sci_gpe ;
 int xo15_sci_gpe_handler ;

__attribute__((used)) static int xo15_sci_remove(struct acpi_device *device)
{
 acpi_disable_gpe(((void*)0), xo15_sci_gpe);
 acpi_remove_gpe_handler(((void*)0), xo15_sci_gpe, xo15_sci_gpe_handler);
 cancel_work_sync(&sci_work);
 sysfs_remove_file(&device->dev.kobj, &lid_wake_on_close_attr.attr);
 return 0;
}
