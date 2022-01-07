
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_table_desc {int length; int pointer; } ;
typedef int acpi_status ;


 int acpi_gbl_enable_table_validation ;
 int acpi_tb_validate_table (struct acpi_table_desc*) ;

acpi_status acpi_tb_validate_temp_table(struct acpi_table_desc *table_desc)
{

 if (!table_desc->pointer && !acpi_gbl_enable_table_validation) {
  table_desc->length = sizeof(struct acpi_table_header);
 }

 return (acpi_tb_validate_table(table_desc));
}
