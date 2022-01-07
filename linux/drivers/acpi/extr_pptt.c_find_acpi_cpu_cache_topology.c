
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int dummy; } ;
struct acpi_pptt_processor {int dummy; } ;
struct acpi_pptt_cache {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PTR_DIFF (struct acpi_pptt_processor*,struct acpi_table_header*) ;
 int ACPI_SIG_PPTT ;
 int CACHE_TYPE_UNIFIED ;
 int ENOENT ;
 struct acpi_pptt_cache* acpi_find_cache_node (struct acpi_table_header*,int ,int ,int,struct acpi_pptt_processor**) ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;
 int acpi_pptt_warn_missing () ;
 int acpi_put_table (struct acpi_table_header*) ;
 int get_acpi_id_for_cpu (unsigned int) ;

int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
{
 struct acpi_table_header *table;
 struct acpi_pptt_cache *found_cache;
 acpi_status status;
 u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
 struct acpi_pptt_processor *cpu_node = ((void*)0);
 int ret = -1;

 status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
 if (ACPI_FAILURE(status)) {
  acpi_pptt_warn_missing();
  return -ENOENT;
 }

 found_cache = acpi_find_cache_node(table, acpi_cpu_id,
        CACHE_TYPE_UNIFIED,
        level,
        &cpu_node);
 if (found_cache)
  ret = ACPI_PTR_DIFF(cpu_node, table);

 acpi_put_table(table);

 return ret;
}
