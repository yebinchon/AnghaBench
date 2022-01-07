
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t val_bytes; } ;
struct regmap {unsigned int reg_stride; int cache_bypass; int dev; TYPE_1__ format; } ;


 int _regmap_raw_write (struct regmap*,unsigned int,void const*,int) ;
 int dev_dbg (int ,char*,int,int,unsigned int,unsigned int) ;
 int dev_err (int ,char*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int regcache_sync_block_raw_flush(struct regmap *map, const void **data,
      unsigned int base, unsigned int cur)
{
 size_t val_bytes = map->format.val_bytes;
 int ret, count;

 if (*data == ((void*)0))
  return 0;

 count = (cur - base) / map->reg_stride;

 dev_dbg(map->dev, "Writing %zu bytes for %d registers from 0x%x-0x%x\n",
  count * val_bytes, count, base, cur - map->reg_stride);

 map->cache_bypass = 1;

 ret = _regmap_raw_write(map, base, *data, count * val_bytes);
 if (ret)
  dev_err(map->dev, "Unable to sync registers %#x-%#x. %d\n",
   base, cur - map->reg_stride, ret);

 map->cache_bypass = 0;

 *data = ((void*)0);

 return ret;
}
