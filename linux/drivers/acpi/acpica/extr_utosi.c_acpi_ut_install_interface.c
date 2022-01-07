
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_interface_info {struct acpi_interface_info* next; int flags; void* name; } ;
typedef int acpi_string ;
typedef int acpi_status ;


 void* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_FREE (struct acpi_interface_info*) ;
 int ACPI_OSI_DYNAMIC ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 struct acpi_interface_info* acpi_gbl_supported_interfaces ;
 int strcpy (void*,int ) ;
 int strlen (int ) ;

acpi_status acpi_ut_install_interface(acpi_string interface_name)
{
 struct acpi_interface_info *interface_info;



 interface_info =
     ACPI_ALLOCATE_ZEROED(sizeof(struct acpi_interface_info));
 if (!interface_info) {
  return (AE_NO_MEMORY);
 }

 interface_info->name = ACPI_ALLOCATE_ZEROED(strlen(interface_name) + 1);
 if (!interface_info->name) {
  ACPI_FREE(interface_info);
  return (AE_NO_MEMORY);
 }



 strcpy(interface_info->name, interface_name);
 interface_info->flags = ACPI_OSI_DYNAMIC;
 interface_info->next = acpi_gbl_supported_interfaces;

 acpi_gbl_supported_interfaces = interface_info;
 return (AE_OK);
}
