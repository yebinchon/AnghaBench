
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int lock_arg; int (* unlock ) (int ) ;TYPE_1__* cache_ops; int (* lock ) (int ) ;} ;
struct TYPE_2__ {int (* drop ) (struct regmap*,unsigned int,unsigned int) ;} ;


 int EINVAL ;
 int stub1 (int ) ;
 int stub2 (struct regmap*,unsigned int,unsigned int) ;
 int stub3 (int ) ;
 int trace_regcache_drop_region (struct regmap*,unsigned int,unsigned int) ;

int regcache_drop_region(struct regmap *map, unsigned int min,
    unsigned int max)
{
 int ret = 0;

 if (!map->cache_ops || !map->cache_ops->drop)
  return -EINVAL;

 map->lock(map->lock_arg);

 trace_regcache_drop_region(map, min, max);

 ret = map->cache_ops->drop(map, min, max);

 map->unlock(map->lock_arg);

 return ret;
}
