
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int acpi_has_method (int ,char*) ;

bool acpi_dock_match(acpi_handle handle)
{
 return acpi_has_method(handle, "_DCK");
}
