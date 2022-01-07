
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef unsigned int u64 ;
typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct TYPE_2__ {size_t val_bytes; int (* parse_inplace ) (void*) ;} ;
struct regmap {scalar_t__ cache_type; int lock_arg; int (* unlock ) (int ) ;TYPE_1__ format; int (* lock ) (int ) ;scalar_t__ bus; int reg_stride; } ;


 int EINVAL ;
 int IS_ALIGNED (unsigned int,int ) ;
 scalar_t__ REGCACHE_NONE ;
 int _regmap_read (struct regmap*,scalar_t__,unsigned int*) ;
 scalar_t__ regmap_get_offset (struct regmap*,int) ;
 int regmap_raw_read (struct regmap*,unsigned int,void*,size_t) ;
 int regmap_volatile_range (struct regmap*,unsigned int,size_t) ;
 int stub1 (void*) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
       size_t val_count)
{
 int ret, i;
 size_t val_bytes = map->format.val_bytes;
 bool vol = regmap_volatile_range(map, reg, val_count);

 if (!IS_ALIGNED(reg, map->reg_stride))
  return -EINVAL;
 if (val_count == 0)
  return -EINVAL;

 if (map->bus && map->format.parse_inplace && (vol || map->cache_type == REGCACHE_NONE)) {
  ret = regmap_raw_read(map, reg, val, val_bytes * val_count);
  if (ret != 0)
   return ret;

  for (i = 0; i < val_count * val_bytes; i += val_bytes)
   map->format.parse_inplace(val + i);
 } else {



  u32 *u32 = val;
  u16 *u16 = val;
  u8 *u8 = val;

  map->lock(map->lock_arg);

  for (i = 0; i < val_count; i++) {
   unsigned int ival;

   ret = _regmap_read(map, reg + regmap_get_offset(map, i),
        &ival);
   if (ret != 0)
    goto out;

   switch (map->format.val_bytes) {





   case 4:
    u32[i] = ival;
    break;
   case 2:
    u16[i] = ival;
    break;
   case 1:
    u8[i] = ival;
    break;
   default:
    ret = -EINVAL;
    goto out;
   }
  }

out:
  map->unlock(map->lock_arg);
 }

 return ret;
}
