
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_pptt_processor {int parent; } ;


 int acpi_find_cache_level (struct acpi_table_header*,struct acpi_pptt_processor*,int*,int ,int ) ;
 struct acpi_pptt_processor* fetch_pptt_node (struct acpi_table_header*,int ) ;

__attribute__((used)) static int acpi_count_levels(struct acpi_table_header *table_hdr,
        struct acpi_pptt_processor *cpu_node)
{
 int total_levels = 0;

 do {
  acpi_find_cache_level(table_hdr, cpu_node, &total_levels, 0, 0);
  cpu_node = fetch_pptt_node(table_hdr, cpu_node->parent);
 } while (cpu_node);

 return total_levels;
}
