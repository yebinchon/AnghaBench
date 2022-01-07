
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t val_bytes; } ;
struct regmap {int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;TYPE_1__ format; } ;


 int EINVAL ;
 int _regmap_raw_write (struct regmap*,unsigned int,void const*,size_t) ;
 int regmap_can_raw_write (struct regmap*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int regmap_raw_write(struct regmap *map, unsigned int reg,
       const void *val, size_t val_len)
{
 int ret;

 if (!regmap_can_raw_write(map))
  return -EINVAL;
 if (val_len % map->format.val_bytes)
  return -EINVAL;

 map->lock(map->lock_arg);

 ret = _regmap_raw_write(map, reg, val, val_len);

 map->unlock(map->lock_arg);

 return ret;
}
