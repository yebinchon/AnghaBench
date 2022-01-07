
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int cache_only; int lock_arg; int (* unlock ) (int ) ;scalar_t__ cache_bypass; int (* lock ) (int ) ;} ;


 int WARN_ON (int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int trace_regmap_cache_only (struct regmap*,int) ;

void regcache_cache_only(struct regmap *map, bool enable)
{
 map->lock(map->lock_arg);
 WARN_ON(map->cache_bypass && enable);
 map->cache_only = enable;
 trace_regmap_cache_only(map, enable);
 map->unlock(map->lock_arg);
}
