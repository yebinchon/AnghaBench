
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_os_printf (char*,char const*) ;

__attribute__((used)) static void acpi_rs_out_title(const char *title)
{

 acpi_os_printf("%27s : ", title);
}
