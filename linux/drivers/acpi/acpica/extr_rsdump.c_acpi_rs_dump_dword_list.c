
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 int acpi_os_printf (char*,char*,size_t,int ) ;

__attribute__((used)) static void acpi_rs_dump_dword_list(u8 length, u32 * data)
{
 u8 i;

 for (i = 0; i < length; i++) {
  acpi_os_printf("%25s%2.2X : %8.8X\n", "Dword", i, data[i]);
 }
}
