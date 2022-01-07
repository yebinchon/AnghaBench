
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int cache_bypass; int lock_arg; int (* unlock ) (int ) ;scalar_t__ cache_only; int (* lock ) (int ) ;} ;


 int WARN_ON (int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int trace_regmap_cache_bypass (struct regmap*,int) ;

void regcache_cache_bypass(struct regmap *map, bool enable)
{
 map->lock(map->lock_arg);
 WARN_ON(map->cache_only && enable);
 map->cache_bypass = enable;
 trace_regmap_cache_bypass(map, enable);
 map->unlock(map->lock_arg);
}
