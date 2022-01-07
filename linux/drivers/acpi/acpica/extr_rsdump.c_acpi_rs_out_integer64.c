
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ACPI_FORMAT_UINT64 (int ) ;
 int acpi_os_printf (char*,char const*,int ) ;

__attribute__((used)) static void acpi_rs_out_integer64(const char *title, u64 value)
{

 acpi_os_printf("%27s : %8.8X%8.8X\n", title, ACPI_FORMAT_UINT64(value));
}
