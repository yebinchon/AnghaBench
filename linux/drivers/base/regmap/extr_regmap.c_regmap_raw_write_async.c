
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t val_bytes; } ;
struct regmap {int async; int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;int reg_stride; TYPE_1__ format; } ;


 int EINVAL ;
 int IS_ALIGNED (unsigned int,int ) ;
 int _regmap_raw_write (struct regmap*,unsigned int,void const*,size_t) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int regmap_raw_write_async(struct regmap *map, unsigned int reg,
      const void *val, size_t val_len)
{
 int ret;

 if (val_len % map->format.val_bytes)
  return -EINVAL;
 if (!IS_ALIGNED(reg, map->reg_stride))
  return -EINVAL;

 map->lock(map->lock_arg);

 map->async = 1;

 ret = _regmap_raw_write(map, reg, val, val_len);

 map->async = 0;

 map->unlock(map->lock_arg);

 return ret;
}
