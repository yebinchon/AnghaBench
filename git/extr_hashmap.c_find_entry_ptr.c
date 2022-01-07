
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {struct hashmap_entry* next; } ;
struct hashmap {struct hashmap_entry** table; } ;


 size_t bucket (struct hashmap const*,struct hashmap_entry const*) ;
 int entry_equals (struct hashmap const*,struct hashmap_entry*,struct hashmap_entry const*,void const*) ;

__attribute__((used)) static inline struct hashmap_entry **find_entry_ptr(const struct hashmap *map,
  const struct hashmap_entry *key, const void *keydata)
{
 struct hashmap_entry **e = &map->table[bucket(map, key)];
 while (*e && !entry_equals(map, *e, key, keydata))
  e = &(*e)->next;
 return e;
}
