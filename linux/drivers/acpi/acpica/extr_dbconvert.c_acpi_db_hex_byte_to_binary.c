
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_db_hex_char_to_value (char,int*) ;

__attribute__((used)) static acpi_status acpi_db_hex_byte_to_binary(char *hex_byte, u8 *return_value)
{
 u8 local0;
 u8 local1;
 acpi_status status;



 status = acpi_db_hex_char_to_value(hex_byte[0], &local0);
 if (ACPI_FAILURE(status)) {
  return (status);
 }



 status = acpi_db_hex_char_to_value(hex_byte[1], &local1);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 *return_value = (u8)((local0 << 4) | local1);
 return (AE_OK);
}
