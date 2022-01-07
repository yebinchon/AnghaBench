
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct acpi_bit_register_info {int dummy; } ;


 size_t ACPI_BITREG_MAX ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 int AE_INFO ;
 struct acpi_bit_register_info* acpi_gbl_bit_register_info ;

struct acpi_bit_register_info *acpi_hw_get_bit_register_info(u32 register_id)
{
 ACPI_FUNCTION_ENTRY();

 if (register_id > ACPI_BITREG_MAX) {
  ACPI_ERROR((AE_INFO, "Invalid BitRegister ID: 0x%X",
       register_id));
  return (((void*)0));
 }

 return (&acpi_gbl_bit_register_info[register_id]);
}
