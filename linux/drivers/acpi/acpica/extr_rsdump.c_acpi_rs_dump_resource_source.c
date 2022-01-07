
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_resource_source {int index; char* string_ptr; } ;


 int ACPI_FUNCTION_ENTRY () ;
 int acpi_rs_out_integer8 (char*,int) ;
 int acpi_rs_out_string (char*,char*) ;

__attribute__((used)) static void
acpi_rs_dump_resource_source(struct acpi_resource_source *resource_source)
{
 ACPI_FUNCTION_ENTRY();

 if (resource_source->index == 0xFF) {
  return;
 }

 acpi_rs_out_integer8("Resource Source Index", resource_source->index);

 acpi_rs_out_string("Resource Source",
      resource_source->string_ptr ?
      resource_source->string_ptr : "[Not Specified]");
}
