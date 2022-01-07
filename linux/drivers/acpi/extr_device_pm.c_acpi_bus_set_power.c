
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_device_set_power (struct acpi_device*,int) ;

int acpi_bus_set_power(acpi_handle handle, int state)
{
 struct acpi_device *device;
 int result;

 result = acpi_bus_get_device(handle, &device);
 if (result)
  return result;

 return acpi_device_set_power(device, state);
}
