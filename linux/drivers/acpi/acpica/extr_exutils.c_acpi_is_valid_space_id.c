
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ACPI_ADR_SPACE_DATA_TABLE ;
 scalar_t__ ACPI_ADR_SPACE_FIXED_HARDWARE ;
 scalar_t__ ACPI_NUM_PREDEFINED_REGIONS ;
 scalar_t__ ACPI_USER_REGION_BEGIN ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

u8 acpi_is_valid_space_id(u8 space_id)
{

 if ((space_id >= ACPI_NUM_PREDEFINED_REGIONS) &&
     (space_id < ACPI_USER_REGION_BEGIN) &&
     (space_id != ACPI_ADR_SPACE_DATA_TABLE) &&
     (space_id != ACPI_ADR_SPACE_FIXED_HARDWARE)) {
  return (FALSE);
 }

 return (TRUE);
}
