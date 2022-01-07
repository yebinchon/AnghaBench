
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_table_header {int revision; } ;
struct acpi_pptt_processor {int flags; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_SIG_PPTT ;
 int ENOENT ;
 struct acpi_pptt_processor* acpi_find_processor_node (struct acpi_table_header*,int) ;
 int acpi_get_table (int ,int ,struct acpi_table_header**) ;
 int acpi_pptt_warn_missing () ;
 int acpi_put_table (struct acpi_table_header*) ;
 int get_acpi_id_for_cpu (unsigned int) ;

__attribute__((used)) static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)
{
 struct acpi_table_header *table;
 acpi_status status;
 u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
 struct acpi_pptt_processor *cpu_node = ((void*)0);
 int ret = -ENOENT;

 status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
 if (ACPI_FAILURE(status)) {
  acpi_pptt_warn_missing();
  return ret;
 }

 if (table->revision >= rev)
  cpu_node = acpi_find_processor_node(table, acpi_cpu_id);

 if (cpu_node)
  ret = (cpu_node->flags & flag) != 0;

 acpi_put_table(table);

 return ret;
}
