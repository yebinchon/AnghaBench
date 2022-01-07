
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {struct hashmap_entry* next; } ;
struct hashmap {int dummy; } ;


 scalar_t__ entry_equals (struct hashmap const*,struct hashmap_entry const*,struct hashmap_entry*,int *) ;

struct hashmap_entry *hashmap_get_next(const struct hashmap *map,
   const struct hashmap_entry *entry)
{
 struct hashmap_entry *e = entry->next;
 for (; e; e = e->next)
  if (entry_equals(map, entry, e, ((void*)0)))
   return e;
 return ((void*)0);
}
