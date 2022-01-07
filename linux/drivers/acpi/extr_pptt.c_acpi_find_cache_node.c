
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct acpi_table_header {int dummy; } ;
struct acpi_pptt_processor {int parent; } ;
struct acpi_pptt_cache {int dummy; } ;
typedef enum cache_type { ____Placeholder_cache_type } cache_type ;


 int acpi_cache_type (int) ;
 struct acpi_pptt_cache* acpi_find_cache_level (struct acpi_table_header*,struct acpi_pptt_processor*,int*,unsigned int,int ) ;
 struct acpi_pptt_processor* acpi_find_processor_node (struct acpi_table_header*,int ) ;
 struct acpi_pptt_processor* fetch_pptt_node (struct acpi_table_header*,int ) ;
 int pr_debug (char*,int ,unsigned int,int ) ;

__attribute__((used)) static struct acpi_pptt_cache *acpi_find_cache_node(struct acpi_table_header *table_hdr,
          u32 acpi_cpu_id,
          enum cache_type type,
          unsigned int level,
          struct acpi_pptt_processor **node)
{
 int total_levels = 0;
 struct acpi_pptt_cache *found = ((void*)0);
 struct acpi_pptt_processor *cpu_node;
 u8 acpi_type = acpi_cache_type(type);

 pr_debug("Looking for CPU %d's level %d cache type %d\n",
   acpi_cpu_id, level, acpi_type);

 cpu_node = acpi_find_processor_node(table_hdr, acpi_cpu_id);

 while (cpu_node && !found) {
  found = acpi_find_cache_level(table_hdr, cpu_node,
           &total_levels, level, acpi_type);
  *node = cpu_node;
  cpu_node = fetch_pptt_node(table_hdr, cpu_node->parent);
 }

 return found;
}
