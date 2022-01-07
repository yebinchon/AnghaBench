
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ACPI_ADR_SPACE_DATA_TABLE ;
 size_t ACPI_ADR_SPACE_FIXED_HARDWARE ;
 size_t ACPI_NUM_PREDEFINED_REGIONS ;
 size_t ACPI_USER_REGION_BEGIN ;
 char const** acpi_gbl_region_types ;

const char *acpi_ut_get_region_name(u8 space_id)
{

 if (space_id >= ACPI_USER_REGION_BEGIN) {
  return ("UserDefinedRegion");
 } else if (space_id == ACPI_ADR_SPACE_DATA_TABLE) {
  return ("DataTable");
 } else if (space_id == ACPI_ADR_SPACE_FIXED_HARDWARE) {
  return ("FunctionalFixedHW");
 } else if (space_id >= ACPI_NUM_PREDEFINED_REGIONS) {
  return ("InvalidSpaceId");
 }

 return (acpi_gbl_region_types[space_id]);
}
