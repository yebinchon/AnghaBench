
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_SIG_PPTT ;
 int ENOENT ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;
 int acpi_pptt_warn_missing () ;
 int acpi_put_table (struct acpi_table_header*) ;
 int cache_setup_acpi_cpu (struct acpi_table_header*,unsigned int) ;
 int pr_debug (char*,unsigned int) ;

int cache_setup_acpi(unsigned int cpu)
{
 struct acpi_table_header *table;
 acpi_status status;

 pr_debug("Cache Setup ACPI CPU %d\n", cpu);

 status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
 if (ACPI_FAILURE(status)) {
  acpi_pptt_warn_missing();
  return -ENOENT;
 }

 cache_setup_acpi_cpu(table, cpu);
 acpi_put_table(table);

 return status;
}
