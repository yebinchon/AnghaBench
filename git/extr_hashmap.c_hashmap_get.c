
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {int dummy; } ;
struct hashmap {int dummy; } ;


 struct hashmap_entry** find_entry_ptr (struct hashmap const*,struct hashmap_entry const*,void const*) ;

struct hashmap_entry *hashmap_get(const struct hashmap *map,
    const struct hashmap_entry *key,
    const void *keydata)
{
 return *find_entry_ptr(map, key, keydata);
}
