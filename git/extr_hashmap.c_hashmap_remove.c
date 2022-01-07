
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {struct hashmap_entry* next; } ;
struct hashmap {scalar_t__ private_size; scalar_t__ shrink_at; int tablesize; scalar_t__ do_count_items; } ;


 int HASHMAP_RESIZE_BITS ;
 struct hashmap_entry** find_entry_ptr (struct hashmap*,struct hashmap_entry const*,void const*) ;
 int rehash (struct hashmap*,int) ;

struct hashmap_entry *hashmap_remove(struct hashmap *map,
     const struct hashmap_entry *key,
     const void *keydata)
{
 struct hashmap_entry *old;
 struct hashmap_entry **e = find_entry_ptr(map, key, keydata);
 if (!*e)
  return ((void*)0);


 old = *e;
 *e = old->next;
 old->next = ((void*)0);


 if (map->do_count_items) {
  map->private_size--;
  if (map->private_size < map->shrink_at)
   rehash(map, map->tablesize >> HASHMAP_RESIZE_BITS);
 }

 return old;
}
