
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int ACPI_SUCCESS (int ) ;
 int acpi_get_handle (int ,char*,int *) ;

bool acpi_has_method(acpi_handle handle, char *name)
{
 acpi_handle tmp;

 return ACPI_SUCCESS(acpi_get_handle(handle, name, &tmp));
}
