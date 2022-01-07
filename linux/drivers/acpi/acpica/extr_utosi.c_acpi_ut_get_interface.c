
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_interface_info {struct acpi_interface_info* next; int name; } ;
typedef int acpi_string ;


 struct acpi_interface_info* acpi_gbl_supported_interfaces ;
 int strcmp (int ,int ) ;

struct acpi_interface_info *acpi_ut_get_interface(acpi_string interface_name)
{
 struct acpi_interface_info *next_interface;

 next_interface = acpi_gbl_supported_interfaces;
 while (next_interface) {
  if (!strcmp(interface_name, next_interface->name)) {
   return (next_interface);
  }

  next_interface = next_interface->next;
 }

 return (((void*)0));
}
