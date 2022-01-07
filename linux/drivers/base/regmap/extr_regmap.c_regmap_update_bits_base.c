
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int async; int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;


 int _regmap_update_bits (struct regmap*,unsigned int,unsigned int,unsigned int,int*,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int regmap_update_bits_base(struct regmap *map, unsigned int reg,
       unsigned int mask, unsigned int val,
       bool *change, bool async, bool force)
{
 int ret;

 map->lock(map->lock_arg);

 map->async = async;

 ret = _regmap_update_bits(map, reg, mask, val, change, force);

 map->async = 0;

 map->unlock(map->lock_arg);

 return ret;
}
