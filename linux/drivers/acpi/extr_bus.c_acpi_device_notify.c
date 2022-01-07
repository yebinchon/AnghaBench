
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct acpi_device {TYPE_2__* driver; } ;
typedef int acpi_handle ;
struct TYPE_3__ {int (* notify ) (struct acpi_device*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct acpi_device*,int ) ;

__attribute__((used)) static void acpi_device_notify(acpi_handle handle, u32 event, void *data)
{
 struct acpi_device *device = data;

 device->driver->ops.notify(device, event);
}
