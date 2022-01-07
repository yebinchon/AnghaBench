
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;
typedef int acpi_handle ;


 int acpi_get_device_data (int ,struct acpi_device**,int *) ;

int acpi_bus_get_device(acpi_handle handle, struct acpi_device **device)
{
 return acpi_get_device_data(handle, device, ((void*)0));
}
