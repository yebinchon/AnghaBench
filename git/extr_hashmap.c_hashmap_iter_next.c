
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hashmap_iter {scalar_t__ tablepos; TYPE_1__* map; struct hashmap_entry* next; } ;
struct hashmap_entry {struct hashmap_entry* next; } ;
struct TYPE_2__ {scalar_t__ tablesize; struct hashmap_entry** table; } ;



struct hashmap_entry *hashmap_iter_next(struct hashmap_iter *iter)
{
 struct hashmap_entry *current = iter->next;
 for (;;) {
  if (current) {
   iter->next = current->next;
   return current;
  }

  if (iter->tablepos >= iter->map->tablesize)
   return ((void*)0);

  current = iter->map->table[iter->tablepos++];
 }
}
