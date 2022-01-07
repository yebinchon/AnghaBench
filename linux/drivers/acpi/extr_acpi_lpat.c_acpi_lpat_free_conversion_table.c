
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_lpat_conversion_table {struct acpi_lpat_conversion_table* lpat; } ;


 int kfree (struct acpi_lpat_conversion_table*) ;

void acpi_lpat_free_conversion_table(struct acpi_lpat_conversion_table
         *lpat_table)
{
 if (lpat_table) {
  kfree(lpat_table->lpat);
  kfree(lpat_table);
 }
}
