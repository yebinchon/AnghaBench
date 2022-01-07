
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_interface_info {int flags; struct acpi_interface_info* next; } ;
typedef int acpi_status ;


 int ACPI_DISABLE_INTERFACES ;
 int ACPI_FEATURE_STRINGS ;
 int ACPI_OSI_FEATURE ;
 int ACPI_OSI_INVALID ;
 int ACPI_VENDOR_STRINGS ;
 int AE_OK ;
 struct acpi_interface_info* acpi_gbl_supported_interfaces ;

acpi_status acpi_ut_update_interfaces(u8 action)
{
 struct acpi_interface_info *next_interface;

 next_interface = acpi_gbl_supported_interfaces;
 while (next_interface) {
  if (((next_interface->flags & ACPI_OSI_FEATURE) &&
       (action & ACPI_FEATURE_STRINGS)) ||
      (!(next_interface->flags & ACPI_OSI_FEATURE) &&
       (action & ACPI_VENDOR_STRINGS))) {
   if (action & ACPI_DISABLE_INTERFACES) {



    next_interface->flags |= ACPI_OSI_INVALID;
   } else {


    next_interface->flags &= ~ACPI_OSI_INVALID;
   }
  }

  next_interface = next_interface->next;
 }

 return (AE_OK);
}
