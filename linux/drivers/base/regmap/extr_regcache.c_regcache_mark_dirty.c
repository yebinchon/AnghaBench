
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int cache_dirty; int no_sync_defaults; int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int stub1 (int ) ;
 int stub2 (int ) ;

void regcache_mark_dirty(struct regmap *map)
{
 map->lock(map->lock_arg);
 map->cache_dirty = 1;
 map->no_sync_defaults = 1;
 map->unlock(map->lock_arg);
}
