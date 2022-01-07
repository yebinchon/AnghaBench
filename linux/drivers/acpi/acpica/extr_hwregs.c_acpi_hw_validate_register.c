
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct acpi_generic_address {scalar_t__ space_id; int access_width; scalar_t__ bit_width; scalar_t__ bit_offset; int address; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ;
 int ACPI_ERROR (int ) ;
 int ACPI_MOVE_64_TO_64 (int *,int *) ;
 scalar_t__ ACPI_ROUND_UP (scalar_t__,scalar_t__) ;
 int ACPI_WARNING (int ) ;
 int AE_BAD_ADDRESS ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_OK ;
 int AE_SUPPORT ;
 scalar_t__ acpi_hw_get_access_bit_width (int ,struct acpi_generic_address*,scalar_t__) ;

acpi_status
acpi_hw_validate_register(struct acpi_generic_address *reg,
     u8 max_bit_width, u64 *address)
{
 u8 bit_width;
 u8 access_width;



 if (!reg) {
  return (AE_BAD_PARAMETER);
 }






 ACPI_MOVE_64_TO_64(address, &reg->address);
 if (!(*address)) {
  return (AE_BAD_ADDRESS);
 }



 if ((reg->space_id != ACPI_ADR_SPACE_SYSTEM_MEMORY) &&
     (reg->space_id != ACPI_ADR_SPACE_SYSTEM_IO)) {
  ACPI_ERROR((AE_INFO,
       "Unsupported address space: 0x%X", reg->space_id));
  return (AE_SUPPORT);
 }



 if (reg->access_width > 4) {
  ACPI_ERROR((AE_INFO,
       "Unsupported register access width: 0x%X",
       reg->access_width));
  return (AE_SUPPORT);
 }



 access_width =
     acpi_hw_get_access_bit_width(*address, reg, max_bit_width);
 bit_width =
     ACPI_ROUND_UP(reg->bit_offset + reg->bit_width, access_width);
 if (max_bit_width < bit_width) {
  ACPI_WARNING((AE_INFO,
         "Requested bit width 0x%X is smaller than register bit width 0x%X",
         max_bit_width, bit_width));
  return (AE_SUPPORT);
 }

 return (AE_OK);
}
