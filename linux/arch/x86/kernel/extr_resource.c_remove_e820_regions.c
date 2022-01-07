
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct e820_entry {scalar_t__ size; scalar_t__ addr; } ;
struct TYPE_2__ {int nr_entries; struct e820_entry* entries; } ;


 TYPE_1__* e820_table ;
 int resource_clip (struct resource*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void remove_e820_regions(struct resource *avail)
{
 int i;
 struct e820_entry *entry;

 for (i = 0; i < e820_table->nr_entries; i++) {
  entry = &e820_table->entries[i];

  resource_clip(avail, entry->addr,
         entry->addr + entry->size - 1);
 }
}
