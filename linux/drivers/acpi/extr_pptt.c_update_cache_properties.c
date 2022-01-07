
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cacheinfo {int attributes; scalar_t__ type; int ways_of_associativity; int number_of_sets; int coherency_line_size; int size; struct acpi_pptt_processor* fw_token; } ;
struct acpi_pptt_processor {int dummy; } ;
struct acpi_pptt_cache {int flags; int attributes; int associativity; int number_of_sets; int line_size; int size; } ;


 int ACPI_PPTT_ALLOCATION_TYPE_VALID ;
 int ACPI_PPTT_ASSOCIATIVITY_VALID ;





 int ACPI_PPTT_CACHE_TYPE_VALID ;

 int ACPI_PPTT_LINE_SIZE_VALID ;
 int ACPI_PPTT_MASK_ALLOCATION_TYPE ;
 int ACPI_PPTT_MASK_WRITE_POLICY ;
 int ACPI_PPTT_NUMBER_OF_SETS_VALID ;
 int ACPI_PPTT_SIZE_PROPERTY_VALID ;
 int ACPI_PPTT_WRITE_POLICY_VALID ;
 int CACHE_READ_ALLOCATE ;
 scalar_t__ CACHE_TYPE_NOCACHE ;
 scalar_t__ CACHE_TYPE_UNIFIED ;
 int CACHE_WRITE_ALLOCATE ;
 int CACHE_WRITE_BACK ;
 int CACHE_WRITE_THROUGH ;

__attribute__((used)) static void update_cache_properties(struct cacheinfo *this_leaf,
        struct acpi_pptt_cache *found_cache,
        struct acpi_pptt_processor *cpu_node)
{
 this_leaf->fw_token = cpu_node;
 if (found_cache->flags & ACPI_PPTT_SIZE_PROPERTY_VALID)
  this_leaf->size = found_cache->size;
 if (found_cache->flags & ACPI_PPTT_LINE_SIZE_VALID)
  this_leaf->coherency_line_size = found_cache->line_size;
 if (found_cache->flags & ACPI_PPTT_NUMBER_OF_SETS_VALID)
  this_leaf->number_of_sets = found_cache->number_of_sets;
 if (found_cache->flags & ACPI_PPTT_ASSOCIATIVITY_VALID)
  this_leaf->ways_of_associativity = found_cache->associativity;
 if (found_cache->flags & ACPI_PPTT_WRITE_POLICY_VALID) {
  switch (found_cache->attributes & ACPI_PPTT_MASK_WRITE_POLICY) {
  case 132:
   this_leaf->attributes = CACHE_WRITE_THROUGH;
   break;
  case 133:
   this_leaf->attributes = CACHE_WRITE_BACK;
   break;
  }
 }
 if (found_cache->flags & ACPI_PPTT_ALLOCATION_TYPE_VALID) {
  switch (found_cache->attributes & ACPI_PPTT_MASK_ALLOCATION_TYPE) {
  case 131:
   this_leaf->attributes |= CACHE_READ_ALLOCATE;
   break;
  case 128:
   this_leaf->attributes |= CACHE_WRITE_ALLOCATE;
   break;
  case 130:
  case 129:
   this_leaf->attributes |=
    CACHE_READ_ALLOCATE | CACHE_WRITE_ALLOCATE;
   break;
  }
 }
 if (this_leaf->type == CACHE_TYPE_NOCACHE &&
     found_cache->flags & ACPI_PPTT_CACHE_TYPE_VALID)
  this_leaf->type = CACHE_TYPE_UNIFIED;
}
