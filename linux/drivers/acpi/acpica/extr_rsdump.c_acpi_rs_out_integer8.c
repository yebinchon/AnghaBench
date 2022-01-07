
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int acpi_os_printf (char*,char const*,int ) ;

__attribute__((used)) static void acpi_rs_out_integer8(const char *title, u8 value)
{
 acpi_os_printf("%27s : %2.2X\n", title, value);
}
