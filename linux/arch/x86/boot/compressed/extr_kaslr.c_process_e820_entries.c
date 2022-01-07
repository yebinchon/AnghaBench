
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_vector {int size; int start; } ;
struct boot_e820_entry {scalar_t__ type; int size; int addr; } ;
struct TYPE_2__ {int e820_entries; struct boot_e820_entry* e820_table; } ;


 scalar_t__ E820_TYPE_RAM ;
 TYPE_1__* boot_params ;
 scalar_t__ process_mem_region (struct mem_vector*,unsigned long,unsigned long) ;

__attribute__((used)) static void process_e820_entries(unsigned long minimum,
     unsigned long image_size)
{
 int i;
 struct mem_vector region;
 struct boot_e820_entry *entry;


 for (i = 0; i < boot_params->e820_entries; i++) {
  entry = &boot_params->e820_table[i];

  if (entry->type != E820_TYPE_RAM)
   continue;
  region.start = entry->addr;
  region.size = entry->size;
  if (process_mem_region(&region, minimum, image_size))
   break;
 }
}
