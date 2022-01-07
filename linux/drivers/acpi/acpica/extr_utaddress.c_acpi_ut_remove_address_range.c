
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
struct acpi_address_range {struct acpi_address_range* next; int end_address; int start_address; struct acpi_namespace_node* region_node; } ;
typedef size_t acpi_adr_space_type ;


 size_t ACPI_ADR_SPACE_SYSTEM_IO ;
 size_t ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_DB_NAMES ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FREE (struct acpi_address_range*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 struct acpi_address_range** acpi_gbl_address_range_list ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int return_VOID ;
 int ut_remove_address_range ;

void
acpi_ut_remove_address_range(acpi_adr_space_type space_id,
        struct acpi_namespace_node *region_node)
{
 struct acpi_address_range *range_info;
 struct acpi_address_range *prev;

 ACPI_FUNCTION_TRACE(ut_remove_address_range);

 if ((space_id != ACPI_ADR_SPACE_SYSTEM_MEMORY) &&
     (space_id != ACPI_ADR_SPACE_SYSTEM_IO)) {
  return_VOID;
 }



 range_info = prev = acpi_gbl_address_range_list[space_id];
 while (range_info) {
  if (range_info->region_node == region_node) {
   if (range_info == prev) {
    acpi_gbl_address_range_list[space_id] =
        range_info->next;
   } else {
    prev->next = range_info->next;
   }

   ACPI_DEBUG_PRINT((ACPI_DB_NAMES,
       "\nRemoved [%4.4s] address range: 0x%8.8X%8.8X-0x%8.8X%8.8X\n",
       acpi_ut_get_node_name(range_info->
        region_node),
       ACPI_FORMAT_UINT64(range_info->
            start_address),
       ACPI_FORMAT_UINT64(range_info->
            end_address)));

   ACPI_FREE(range_info);
   return_VOID;
  }

  prev = range_info;
  range_info = range_info->next;
 }

 return_VOID;
}
