
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {scalar_t__ cache_type; TYPE_1__* cache_ops; int dev; int reg_defaults_raw; scalar_t__ cache_free; int reg_defaults; } ;
struct TYPE_2__ {int (* exit ) (struct regmap*) ;int name; } ;


 int BUG_ON (int) ;
 scalar_t__ REGCACHE_NONE ;
 int dev_dbg (int ,char*,int ) ;
 int kfree (int ) ;
 int stub1 (struct regmap*) ;

void regcache_exit(struct regmap *map)
{
 if (map->cache_type == REGCACHE_NONE)
  return;

 BUG_ON(!map->cache_ops);

 kfree(map->reg_defaults);
 if (map->cache_free)
  kfree(map->reg_defaults_raw);

 if (map->cache_ops->exit) {
  dev_dbg(map->dev, "Destroying %s cache\n",
   map->cache_ops->name);
  map->cache_ops->exit(map);
 }
}
