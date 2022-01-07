
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_desc {int flags; scalar_t__ address; } ;


 int ACPI_FREE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_PHYSADDR_TO_PTR (scalar_t__) ;
 scalar_t__ ACPI_PTR_TO_PHYSADDR (int *) ;
 int ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL ;
 int ACPI_TABLE_ORIGIN_MASK ;
 int acpi_tb_invalidate_table (struct acpi_table_desc*) ;
 int return_VOID ;
 int tb_uninstall_table ;

void acpi_tb_uninstall_table(struct acpi_table_desc *table_desc)
{

 ACPI_FUNCTION_TRACE(tb_uninstall_table);



 if (!table_desc->address) {
  return_VOID;
 }

 acpi_tb_invalidate_table(table_desc);

 if ((table_desc->flags & ACPI_TABLE_ORIGIN_MASK) ==
     ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL) {
  ACPI_FREE(ACPI_PHYSADDR_TO_PTR(table_desc->address));
 }

 table_desc->address = ACPI_PTR_TO_PHYSADDR(((void*)0));
 return_VOID;
}
