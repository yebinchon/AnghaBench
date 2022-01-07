
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 int acpi_os_printf (char*,char*,size_t,size_t) ;

__attribute__((used)) static void acpi_rs_dump_word_list(u16 length, u16 *data)
{
 u16 i;

 for (i = 0; i < length; i++) {
  acpi_os_printf("%25s%2.2X : %4.4X\n", "Word", i, data[i]);
 }
}
