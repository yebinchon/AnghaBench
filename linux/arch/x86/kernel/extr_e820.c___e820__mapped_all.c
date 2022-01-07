
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct e820_entry {int type; scalar_t__ addr; scalar_t__ size; } ;
typedef enum e820_type { ____Placeholder_e820_type } e820_type ;
struct TYPE_2__ {int nr_entries; struct e820_entry* entries; } ;


 TYPE_1__* e820_table ;

__attribute__((used)) static struct e820_entry *__e820__mapped_all(u64 start, u64 end,
          enum e820_type type)
{
 int i;

 for (i = 0; i < e820_table->nr_entries; i++) {
  struct e820_entry *entry = &e820_table->entries[i];

  if (type && entry->type != type)
   continue;


  if (entry->addr >= end || entry->addr + entry->size <= start)
   continue;





  if (entry->addr <= start)
   start = entry->addr + entry->size;





  if (start >= end)
   return entry;
 }

 return ((void*)0);
}
