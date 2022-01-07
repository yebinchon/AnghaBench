
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_address_range {struct acpi_address_range* next; } ;


 int ACPI_ADDRESS_RANGE_MAX ;
 int ACPI_FREE (struct acpi_address_range*) ;
 struct acpi_address_range** acpi_gbl_address_range_list ;

void acpi_ut_delete_address_lists(void)
{
 struct acpi_address_range *next;
 struct acpi_address_range *range_info;
 int i;



 for (i = 0; i < ACPI_ADDRESS_RANGE_MAX; i++) {
  next = acpi_gbl_address_range_list[i];

  while (next) {
   range_info = next;
   next = range_info->next;
   ACPI_FREE(range_info);
  }

  acpi_gbl_address_range_list[i] = ((void*)0);
 }
}
