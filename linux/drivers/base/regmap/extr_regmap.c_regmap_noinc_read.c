
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {size_t val_bytes; } ;
struct regmap {size_t max_raw_read; int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;int reg_stride; TYPE_2__ format; TYPE_1__* bus; } ;
struct TYPE_3__ {int read; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int IS_ALIGNED (unsigned int,int ) ;
 int _regmap_raw_read (struct regmap*,unsigned int,void*,size_t) ;
 int regmap_readable_noinc (struct regmap*,unsigned int) ;
 int regmap_volatile (struct regmap*,unsigned int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int regmap_noinc_read(struct regmap *map, unsigned int reg,
        void *val, size_t val_len)
{
 size_t read_len;
 int ret;

 if (!map->bus)
  return -EINVAL;
 if (!map->bus->read)
  return -ENOTSUPP;
 if (val_len % map->format.val_bytes)
  return -EINVAL;
 if (!IS_ALIGNED(reg, map->reg_stride))
  return -EINVAL;
 if (val_len == 0)
  return -EINVAL;

 map->lock(map->lock_arg);

 if (!regmap_volatile(map, reg) || !regmap_readable_noinc(map, reg)) {
  ret = -EINVAL;
  goto out_unlock;
 }

 while (val_len) {
  if (map->max_raw_read && map->max_raw_read < val_len)
   read_len = map->max_raw_read;
  else
   read_len = val_len;
  ret = _regmap_raw_read(map, reg, val, read_len);
  if (ret)
   goto out_unlock;
  val = ((u8 *)val) + read_len;
  val_len -= read_len;
 }

out_unlock:
 map->unlock(map->lock_arg);
 return ret;
}
