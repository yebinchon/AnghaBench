
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {unsigned int* cache; } ;


 unsigned int regcache_flat_get_index (struct regmap*,unsigned int) ;

__attribute__((used)) static int regcache_flat_write(struct regmap *map, unsigned int reg,
          unsigned int value)
{
 unsigned int *cache = map->cache;
 unsigned int index = regcache_flat_get_index(map, reg);

 cache[index] = value;

 return 0;
}
