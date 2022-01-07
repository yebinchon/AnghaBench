
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power_manageable; } ;
struct acpi_device {TYPE_1__ flags; } ;
typedef int acpi_handle ;


 int acpi_bus_get_device (int ,struct acpi_device**) ;

bool acpi_bus_power_manageable(acpi_handle handle)
{
 struct acpi_device *device;
 int result;

 result = acpi_bus_get_device(handle, &device);
 return result ? 0 : device->flags.power_manageable;
}
