
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {unsigned int reg_stride; unsigned int cache_word_size; int cache_size_raw; } ;


 unsigned int DIV_ROUND_UP (int ,int ) ;
 int regcache_lzo_block_count (struct regmap*) ;

__attribute__((used)) static inline int regcache_lzo_get_blkindex(struct regmap *map,
         unsigned int reg)
{
 return ((reg / map->reg_stride) * map->cache_word_size) /
  DIV_ROUND_UP(map->cache_size_raw,
        regcache_lzo_block_count(map));
}
