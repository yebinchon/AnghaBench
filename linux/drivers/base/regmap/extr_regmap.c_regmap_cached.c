
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {scalar_t__ cache_type; unsigned int max_register; int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;int cache_ops; } ;


 scalar_t__ REGCACHE_NONE ;
 int regcache_read (struct regmap*,unsigned int,unsigned int*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

bool regmap_cached(struct regmap *map, unsigned int reg)
{
 int ret;
 unsigned int val;

 if (map->cache_type == REGCACHE_NONE)
  return 0;

 if (!map->cache_ops)
  return 0;

 if (map->max_register && reg > map->max_register)
  return 0;

 map->lock(map->lock_arg);
 ret = regcache_read(map, reg, &val);
 map->unlock(map->lock_arg);
 if (ret)
  return 0;

 return 1;
}
