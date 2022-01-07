
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int tablesize; } ;



int hashmap_bucket(const struct hashmap *map, unsigned int hash)
{
 return hash & (map->tablesize - 1);
}
