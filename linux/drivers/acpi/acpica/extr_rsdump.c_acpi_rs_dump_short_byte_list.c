
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 int acpi_os_printf (char*,...) ;

__attribute__((used)) static void acpi_rs_dump_short_byte_list(u8 length, u8 * data)
{
 u8 i;

 for (i = 0; i < length; i++) {
  acpi_os_printf("%X ", data[i]);
 }

 acpi_os_printf("\n");
}
