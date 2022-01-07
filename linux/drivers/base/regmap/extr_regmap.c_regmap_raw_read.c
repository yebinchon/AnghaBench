
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t val_bytes; int (* format_val ) (void*,unsigned int,int ) ;} ;
struct regmap {scalar_t__ cache_type; size_t max_raw_read; int lock_arg; int (* unlock ) (int ) ;TYPE_2__ format; scalar_t__ use_single_read; TYPE_1__* bus; scalar_t__ cache_bypass; int (* lock ) (int ) ;int reg_stride; } ;
struct TYPE_3__ {int read; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int IS_ALIGNED (unsigned int,int ) ;
 scalar_t__ REGCACHE_NONE ;
 int _regmap_raw_read (struct regmap*,unsigned int,void*,size_t) ;
 int _regmap_read (struct regmap*,scalar_t__,unsigned int*) ;
 scalar_t__ regmap_get_offset (struct regmap*,int) ;
 scalar_t__ regmap_volatile_range (struct regmap*,unsigned int,size_t) ;
 int stub1 (int ) ;
 int stub2 (void*,unsigned int,int ) ;
 int stub3 (int ) ;

int regmap_raw_read(struct regmap *map, unsigned int reg, void *val,
      size_t val_len)
{
 size_t val_bytes = map->format.val_bytes;
 size_t val_count = val_len / val_bytes;
 unsigned int v;
 int ret, i;

 if (!map->bus)
  return -EINVAL;
 if (val_len % map->format.val_bytes)
  return -EINVAL;
 if (!IS_ALIGNED(reg, map->reg_stride))
  return -EINVAL;
 if (val_count == 0)
  return -EINVAL;

 map->lock(map->lock_arg);

 if (regmap_volatile_range(map, reg, val_count) || map->cache_bypass ||
     map->cache_type == REGCACHE_NONE) {
  size_t chunk_count, chunk_bytes;
  size_t chunk_regs = val_count;

  if (!map->bus->read) {
   ret = -ENOTSUPP;
   goto out;
  }

  if (map->use_single_read)
   chunk_regs = 1;
  else if (map->max_raw_read && val_len > map->max_raw_read)
   chunk_regs = map->max_raw_read / val_bytes;

  chunk_count = val_count / chunk_regs;
  chunk_bytes = chunk_regs * val_bytes;


  for (i = 0; i < chunk_count; i++) {
   ret = _regmap_raw_read(map, reg, val, chunk_bytes);
   if (ret != 0)
    goto out;

   reg += regmap_get_offset(map, chunk_regs);
   val += chunk_bytes;
   val_len -= chunk_bytes;
  }


  if (val_len) {
   ret = _regmap_raw_read(map, reg, val, val_len);
   if (ret != 0)
    goto out;
  }
 } else {



  for (i = 0; i < val_count; i++) {
   ret = _regmap_read(map, reg + regmap_get_offset(map, i),
        &v);
   if (ret != 0)
    goto out;

   map->format.format_val(val + (i * val_bytes), v, 0);
  }
 }

 out:
 map->unlock(map->lock_arg);

 return ret;
}
