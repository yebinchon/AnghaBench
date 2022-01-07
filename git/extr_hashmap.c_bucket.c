
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap_entry {int hash; } ;
struct hashmap {int tablesize; } ;



__attribute__((used)) static inline unsigned int bucket(const struct hashmap *map,
  const struct hashmap_entry *key)
{
 return key->hash & (map->tablesize - 1);
}
