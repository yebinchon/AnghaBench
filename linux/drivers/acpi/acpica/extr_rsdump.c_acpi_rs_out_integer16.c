
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int acpi_os_printf (char*,char const*,int ) ;

__attribute__((used)) static void acpi_rs_out_integer16(const char *title, u16 value)
{

 acpi_os_printf("%27s : %4.4X\n", title, value);
}
