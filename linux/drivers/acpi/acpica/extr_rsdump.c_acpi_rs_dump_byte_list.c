
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;


 int acpi_os_printf (char*,char*,size_t,int ) ;

__attribute__((used)) static void acpi_rs_dump_byte_list(u16 length, u8 * data)
{
 u16 i;

 for (i = 0; i < length; i++) {
  acpi_os_printf("%25s%2.2X : %2.2X\n", "Byte", i, data[i]);
 }
}
