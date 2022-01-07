
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char acpi_namespace_node ;
typedef int acpi_status ;


 int ACPI_CAST_PTR (int ,char*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 char* acpi_db_convert_to_node (char*) ;
 char* acpi_format_exception (int ) ;
 int acpi_handle ;
 int acpi_os_printf (char*,char*,char*) ;
 int acpi_unload_parent_table (int ) ;

void acpi_db_unload_acpi_table(char *object_name)
{
 struct acpi_namespace_node *node;
 acpi_status status;



 node = acpi_db_convert_to_node(object_name);
 if (!node) {
  return;
 }

 status = acpi_unload_parent_table(ACPI_CAST_PTR(acpi_handle, node));
 if (ACPI_SUCCESS(status)) {
  acpi_os_printf("Parent of [%s] (%p) unloaded and uninstalled\n",
          object_name, node);
 } else {
  acpi_os_printf("%s, while unloading parent table of [%s]\n",
          acpi_format_exception(status), object_name);
 }
}
