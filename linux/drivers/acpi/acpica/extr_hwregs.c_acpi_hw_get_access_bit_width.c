
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct acpi_generic_address {int bit_offset; int bit_width; scalar_t__ space_id; scalar_t__ access_width; } ;


 int ACPI_ACCESS_BIT_WIDTH (scalar_t__) ;
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ;
 scalar_t__ ACPI_IS_ALIGNED (int,int) ;
 scalar_t__ ACPI_IS_POWER_OF_TWO (int) ;
 int ACPI_ROUND_UP_POWER_OF_TWO_8 (int) ;

__attribute__((used)) static u8
acpi_hw_get_access_bit_width(u64 address,
        struct acpi_generic_address *reg, u8 max_bit_width)
{
 u8 access_bit_width;
 if (!reg->bit_offset && reg->bit_width &&
     ACPI_IS_POWER_OF_TWO(reg->bit_width) &&
     ACPI_IS_ALIGNED(reg->bit_width, 8)) {
  access_bit_width = reg->bit_width;
 } else if (reg->access_width) {
  access_bit_width = ACPI_ACCESS_BIT_WIDTH(reg->access_width);
 } else {
  access_bit_width =
      ACPI_ROUND_UP_POWER_OF_TWO_8(reg->bit_offset +
       reg->bit_width);
  if (access_bit_width <= 8) {
   access_bit_width = 8;
  } else {
   while (!ACPI_IS_ALIGNED(address, access_bit_width >> 3)) {
    access_bit_width >>= 1;
   }
  }
 }



 if (reg->space_id == ACPI_ADR_SPACE_SYSTEM_IO) {
  max_bit_width = 32;
 }






 if (access_bit_width < max_bit_width) {
  return (access_bit_width);
 }
 return (max_bit_width);
}
