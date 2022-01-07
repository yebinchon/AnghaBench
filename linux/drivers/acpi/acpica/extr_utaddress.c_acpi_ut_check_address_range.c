
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct acpi_address_range {scalar_t__ end_address; scalar_t__ start_address; struct acpi_address_range* next; int region_node; } ;
typedef scalar_t__ acpi_physical_address ;
typedef size_t acpi_adr_space_type ;


 size_t ACPI_ADR_SPACE_SYSTEM_IO ;
 size_t ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int TRUE ;
 struct acpi_address_range** acpi_gbl_address_range_list ;
 char* acpi_ns_get_normalized_pathname (int ,int ) ;
 int acpi_ut_get_region_name (size_t) ;
 int return_UINT32 (scalar_t__) ;
 int ut_check_address_range ;

u32
acpi_ut_check_address_range(acpi_adr_space_type space_id,
       acpi_physical_address address, u32 length, u8 warn)
{
 struct acpi_address_range *range_info;
 acpi_physical_address end_address;
 char *pathname;
 u32 overlap_count = 0;

 ACPI_FUNCTION_TRACE(ut_check_address_range);

 if ((space_id != ACPI_ADR_SPACE_SYSTEM_MEMORY) &&
     (space_id != ACPI_ADR_SPACE_SYSTEM_IO)) {
  return_UINT32(0);
 }

 range_info = acpi_gbl_address_range_list[space_id];
 end_address = address + length - 1;



 while (range_info) {
  if ((address <= range_info->end_address) &&
      (end_address >= range_info->start_address)) {



   overlap_count++;
   if (warn) {
    pathname =
        acpi_ns_get_normalized_pathname(range_info->
            region_node,
            TRUE);

    ACPI_WARNING((AE_INFO,
           "%s range 0x%8.8X%8.8X-0x%8.8X%8.8X conflicts with OpRegion 0x%8.8X%8.8X-0x%8.8X%8.8X (%s)",
           acpi_ut_get_region_name(space_id),
           ACPI_FORMAT_UINT64(address),
           ACPI_FORMAT_UINT64(end_address),
           ACPI_FORMAT_UINT64(range_info->
         start_address),
           ACPI_FORMAT_UINT64(range_info->
         end_address),
           pathname));
    ACPI_FREE(pathname);
   }
  }

  range_info = range_info->next;
 }

 return_UINT32(overlap_count);
}
