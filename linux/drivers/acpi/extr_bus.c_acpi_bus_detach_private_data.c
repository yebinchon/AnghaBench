
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int acpi_bus_private_data_handler ;
 int acpi_detach_data (int ,int ) ;

void acpi_bus_detach_private_data(acpi_handle handle)
{
 acpi_detach_data(handle, acpi_bus_private_data_handler);
}
