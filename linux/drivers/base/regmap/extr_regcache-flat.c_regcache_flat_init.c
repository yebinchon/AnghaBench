
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {scalar_t__ reg_stride_order; unsigned int max_register; unsigned int* cache; int num_reg_defaults; TYPE_1__* reg_defaults; } ;
struct TYPE_2__ {unsigned int reg; unsigned int def; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int* kcalloc (unsigned int,int,int ) ;
 unsigned int regcache_flat_get_index (struct regmap*,unsigned int) ;

__attribute__((used)) static int regcache_flat_init(struct regmap *map)
{
 int i;
 unsigned int *cache;

 if (!map || map->reg_stride_order < 0 || !map->max_register)
  return -EINVAL;

 map->cache = kcalloc(regcache_flat_get_index(map, map->max_register)
        + 1, sizeof(unsigned int), GFP_KERNEL);
 if (!map->cache)
  return -ENOMEM;

 cache = map->cache;

 for (i = 0; i < map->num_reg_defaults; i++) {
  unsigned int reg = map->reg_defaults[i].reg;
  unsigned int index = regcache_flat_get_index(map, reg);

  cache[index] = map->reg_defaults[i].def;
 }

 return 0;
}
