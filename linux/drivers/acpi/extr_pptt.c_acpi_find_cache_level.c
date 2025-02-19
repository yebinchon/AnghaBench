
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_table_header {int dummy; } ;
struct acpi_subtable_header {int dummy; } ;
struct acpi_pptt_processor {int dummy; } ;
struct acpi_pptt_cache {int dummy; } ;


 struct acpi_subtable_header* acpi_get_pptt_resource (struct acpi_table_header*,struct acpi_pptt_processor*,int) ;
 int acpi_pptt_walk_cache (struct acpi_table_header*,int,struct acpi_subtable_header*,struct acpi_pptt_cache**,int,int) ;

__attribute__((used)) static struct acpi_pptt_cache *acpi_find_cache_level(struct acpi_table_header *table_hdr,
           struct acpi_pptt_processor *cpu_node,
           int *starting_level, int level,
           int type)
{
 struct acpi_subtable_header *res;
 int number_of_levels = *starting_level;
 int resource = 0;
 struct acpi_pptt_cache *ret = ((void*)0);
 int local_level;


 while ((res = acpi_get_pptt_resource(table_hdr, cpu_node, resource))) {
  resource++;

  local_level = acpi_pptt_walk_cache(table_hdr, *starting_level,
         res, &ret, level, type);





  if (number_of_levels < local_level)
   number_of_levels = local_level;
 }
 if (number_of_levels > *starting_level)
  *starting_level = number_of_levels;

 return ret;
}
