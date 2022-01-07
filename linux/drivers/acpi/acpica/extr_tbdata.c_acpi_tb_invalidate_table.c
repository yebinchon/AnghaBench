
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_desc {int * pointer; int flags; int length; } ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_tb_release_table (int *,int ,int ) ;
 int return_VOID ;
 int tb_invalidate_table ;

void acpi_tb_invalidate_table(struct acpi_table_desc *table_desc)
{

 ACPI_FUNCTION_TRACE(tb_invalidate_table);



 if (!table_desc->pointer) {
  return_VOID;
 }

 acpi_tb_release_table(table_desc->pointer, table_desc->length,
         table_desc->flags);
 table_desc->pointer = ((void*)0);

 return_VOID;
}
