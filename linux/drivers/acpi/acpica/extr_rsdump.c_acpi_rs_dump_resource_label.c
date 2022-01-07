
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource_label {char* string_ptr; } ;


 int ACPI_FUNCTION_ENTRY () ;
 int acpi_rs_out_string (char*,char*) ;

__attribute__((used)) static void
acpi_rs_dump_resource_label(char *title,
       struct acpi_resource_label *resource_label)
{
 ACPI_FUNCTION_ENTRY();

 acpi_rs_out_string(title,
      resource_label->string_ptr ?
      resource_label->string_ptr : "[Not Specified]");
}
