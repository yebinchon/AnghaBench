
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {struct hashmap_entry* next; } ;
struct hashmap {scalar_t__ private_size; scalar_t__ grow_at; int tablesize; scalar_t__ do_count_items; struct hashmap_entry** table; } ;


 int HASHMAP_RESIZE_BITS ;
 unsigned int bucket (struct hashmap*,struct hashmap_entry*) ;
 int rehash (struct hashmap*,int) ;

void hashmap_add(struct hashmap *map, struct hashmap_entry *entry)
{
 unsigned int b = bucket(map, entry);


 entry->next = map->table[b];
 map->table[b] = entry;


 if (map->do_count_items) {
  map->private_size++;
  if (map->private_size > map->grow_at)
   rehash(map, map->tablesize << HASHMAP_RESIZE_BITS);
 }
}
