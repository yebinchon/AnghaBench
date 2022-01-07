
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_interface_info {int flags; struct acpi_interface_info* next; struct acpi_interface_info* name; } ;
typedef int acpi_string ;
typedef int acpi_status ;


 int ACPI_FREE (struct acpi_interface_info*) ;
 int ACPI_OSI_DYNAMIC ;
 int ACPI_OSI_INVALID ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 struct acpi_interface_info* acpi_gbl_supported_interfaces ;
 int strcmp (int ,struct acpi_interface_info*) ;

acpi_status acpi_ut_remove_interface(acpi_string interface_name)
{
 struct acpi_interface_info *previous_interface;
 struct acpi_interface_info *next_interface;

 previous_interface = next_interface = acpi_gbl_supported_interfaces;
 while (next_interface) {
  if (!strcmp(interface_name, next_interface->name)) {




   if (next_interface->flags & ACPI_OSI_DYNAMIC) {



    if (previous_interface == next_interface) {
     acpi_gbl_supported_interfaces =
         next_interface->next;
    } else {
     previous_interface->next =
         next_interface->next;
    }

    ACPI_FREE(next_interface->name);
    ACPI_FREE(next_interface);
   } else {




    if (next_interface->flags & ACPI_OSI_INVALID) {
     return (AE_NOT_EXIST);
    }

    next_interface->flags |= ACPI_OSI_INVALID;
   }

   return (AE_OK);
  }

  previous_interface = next_interface;
  next_interface = next_interface->next;
 }



 return (AE_NOT_EXIST);
}
