
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_desc {int dummy; } ;


 int acpi_tb_invalidate_table (struct acpi_table_desc*) ;

void acpi_tb_release_temp_table(struct acpi_table_desc *table_desc)
{






 acpi_tb_invalidate_table(table_desc);
}
