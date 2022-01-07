
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int use_single_write; } ;


 int regcache_sync_block_raw (struct regmap*,void*,unsigned long*,unsigned int,unsigned int,unsigned int) ;
 int regcache_sync_block_single (struct regmap*,void*,unsigned long*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ regmap_can_raw_write (struct regmap*) ;

int regcache_sync_block(struct regmap *map, void *block,
   unsigned long *cache_present,
   unsigned int block_base, unsigned int start,
   unsigned int end)
{
 if (regmap_can_raw_write(map) && !map->use_single_write)
  return regcache_sync_block_raw(map, block, cache_present,
            block_base, start, end);
 else
  return regcache_sync_block_single(map, block, cache_present,
        block_base, start, end);
}
