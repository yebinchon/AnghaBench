
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int cache_dirty; int (* reg_write ) (void*,unsigned int,unsigned int) ;int dev; scalar_t__ cache_only; int defer_caching; int cache_bypass; } ;


 int EIO ;
 void* _regmap_map_get_context (struct regmap*) ;
 int dev_info (int ,char*,unsigned int,unsigned int) ;
 int regcache_write (struct regmap*,unsigned int,unsigned int) ;
 scalar_t__ regmap_should_log (struct regmap*) ;
 int regmap_writeable (struct regmap*,unsigned int) ;
 int stub1 (void*,unsigned int,unsigned int) ;
 int trace_regmap_reg_write (struct regmap*,unsigned int,unsigned int) ;

int _regmap_write(struct regmap *map, unsigned int reg,
    unsigned int val)
{
 int ret;
 void *context = _regmap_map_get_context(map);

 if (!regmap_writeable(map, reg))
  return -EIO;

 if (!map->cache_bypass && !map->defer_caching) {
  ret = regcache_write(map, reg, val);
  if (ret != 0)
   return ret;
  if (map->cache_only) {
   map->cache_dirty = 1;
   return 0;
  }
 }

 if (regmap_should_log(map))
  dev_info(map->dev, "%x <= %x\n", reg, val);

 trace_regmap_reg_write(map, reg, val);

 return map->reg_write(context, reg, val);
}
