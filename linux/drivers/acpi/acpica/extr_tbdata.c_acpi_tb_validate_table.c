
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_desc {int pointer; int flags; int length; } ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_tb_acquire_table (struct acpi_table_desc*,int *,int *,int *) ;
 int return_ACPI_STATUS (int ) ;
 int tb_validate_table ;

acpi_status acpi_tb_validate_table(struct acpi_table_desc *table_desc)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(tb_validate_table);



 if (!table_desc->pointer) {
  status = acpi_tb_acquire_table(table_desc, &table_desc->pointer,
            &table_desc->length,
            &table_desc->flags);
  if (!table_desc->pointer) {
   status = AE_NO_MEMORY;
  }
 }

 return_ACPI_STATUS(status);
}
