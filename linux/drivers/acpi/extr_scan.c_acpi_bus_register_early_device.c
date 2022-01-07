
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int match_driver; } ;
struct acpi_device {int dev; TYPE_1__ flags; } ;


 int ACPI_STA_DEFAULT ;
 int acpi_add_single_object (struct acpi_device**,int *,int,int ) ;
 int device_attach (int *) ;

int acpi_bus_register_early_device(int type)
{
 struct acpi_device *device = ((void*)0);
 int result;

 result = acpi_add_single_object(&device, ((void*)0),
     type, ACPI_STA_DEFAULT);
 if (result)
  return result;

 device->flags.match_driver = 1;
 return device_attach(&device->dev);
}
