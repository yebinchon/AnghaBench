
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {int dummy; } ;
struct hashmap {int dummy; } ;


 int hashmap_entry_init (struct hashmap_entry*,unsigned int) ;
 struct hashmap_entry* hashmap_get (struct hashmap const*,struct hashmap_entry*,void const*) ;

__attribute__((used)) static inline struct hashmap_entry *hashmap_get_from_hash(
     const struct hashmap *map,
     unsigned int hash,
     const void *keydata)
{
 struct hashmap_entry key;
 hashmap_entry_init(&key, hash);
 return hashmap_get(map, &key, keydata);
}
