
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {unsigned int cache_word_size; } ;



__attribute__((used)) static inline const void *regcache_get_val_addr(struct regmap *map,
      const void *base,
      unsigned int idx)
{
 return base + (map->cache_word_size * idx);
}
