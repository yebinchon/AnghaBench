
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_device_update_power (struct acpi_device*,int*) ;

int acpi_bus_update_power(acpi_handle handle, int *state_p)
{
 struct acpi_device *device;
 int result;

 result = acpi_bus_get_device(handle, &device);
 return result ? result : acpi_device_update_power(device, state_p);
}
