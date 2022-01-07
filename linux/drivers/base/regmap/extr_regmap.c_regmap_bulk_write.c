
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
struct regmap {TYPE_1__ format; int alloc_flags; int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;int bus; int reg_stride; } ;


 int EINVAL ;
 int ENOMEM ;
 int IS_ALIGNED (unsigned int,int ) ;
 int _regmap_write (struct regmap*,scalar_t__,unsigned int) ;
 int kfree (void*) ;
 void* kmemdup (void const*,size_t,int ) ;
 scalar_t__ regmap_get_offset (struct regmap*,int) ;
 int regmap_raw_write (struct regmap*,unsigned int,void*,size_t) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (void*) ;

int regmap_bulk_write(struct regmap *map, unsigned int reg, const void *val,
       size_t val_count)
{
 int ret = 0, i;
 size_t val_bytes = map->format.val_bytes;

 if (!IS_ALIGNED(reg, map->reg_stride))
  return -EINVAL;





 if (!map->bus || !map->format.parse_inplace) {
  map->lock(map->lock_arg);
  for (i = 0; i < val_count; i++) {
   unsigned int ival;

   switch (val_bytes) {
   case 1:
    ival = *(u8 *)(val + (i * val_bytes));
    break;
   case 2:
    ival = *(u16 *)(val + (i * val_bytes));
    break;
   case 4:
    ival = *(u32 *)(val + (i * val_bytes));
    break;





   default:
    ret = -EINVAL;
    goto out;
   }

   ret = _regmap_write(map,
         reg + regmap_get_offset(map, i),
         ival);
   if (ret != 0)
    goto out;
  }
out:
  map->unlock(map->lock_arg);
 } else {
  void *wval;

  wval = kmemdup(val, val_count * val_bytes, map->alloc_flags);
  if (!wval)
   return -ENOMEM;

  for (i = 0; i < val_count * val_bytes; i += val_bytes)
   map->format.parse_inplace(wval + i);

  ret = regmap_raw_write(map, reg, wval, val_bytes * val_count);

  kfree(wval);
 }
 return ret;
}
