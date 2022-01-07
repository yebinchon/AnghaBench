
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;


 int ACPI_BIOS_WARNING (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int AE_INFO ;
 scalar_t__ acpi_gbl_use32_bit_fadt_addresses ;

__attribute__((used)) static u64
acpi_tb_select_address(char *register_name, u32 address32, u64 address64)
{

 if (!address64) {



  return ((u64)address32);
 }

 if (address32 && (address64 != (u64)address32)) {



  ACPI_BIOS_WARNING((AE_INFO,
       "32/64X %s address mismatch in FADT: "
       "0x%8.8X/0x%8.8X%8.8X, using %u-bit address",
       register_name, address32,
       ACPI_FORMAT_UINT64(address64),
       acpi_gbl_use32_bit_fadt_addresses ? 32 :
       64));



  if (acpi_gbl_use32_bit_fadt_addresses) {
   return ((u64)address32);
  }
 }



 return (address64);
}
