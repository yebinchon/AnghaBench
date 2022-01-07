
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_table_header {int dummy; } ;





 int ACPI_TABLE_ORIGIN_MASK ;
 int acpi_os_unmap_memory (struct acpi_table_header*,int ) ;

void
acpi_tb_release_table(struct acpi_table_header *table,
        u32 table_length, u8 table_flags)
{

 switch (table_flags & ACPI_TABLE_ORIGIN_MASK) {
 case 129:

  acpi_os_unmap_memory(table, table_length);
  break;

 case 128:
 case 130:
 default:

  break;
 }
}
