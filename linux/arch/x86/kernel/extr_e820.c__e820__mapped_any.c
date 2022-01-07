
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct e820_table {int nr_entries; struct e820_entry* entries; } ;
struct e820_entry {int type; scalar_t__ addr; scalar_t__ size; } ;
typedef enum e820_type { ____Placeholder_e820_type } e820_type ;



__attribute__((used)) static bool _e820__mapped_any(struct e820_table *table,
         u64 start, u64 end, enum e820_type type)
{
 int i;

 for (i = 0; i < table->nr_entries; i++) {
  struct e820_entry *entry = &table->entries[i];

  if (type && entry->type != type)
   continue;
  if (entry->addr >= end || entry->addr + entry->size <= start)
   continue;
  return 1;
 }
 return 0;
}
