
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int cache_bypass; int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;} ;
struct reg_sequence {int dummy; } ;


 int _regmap_multi_reg_write (struct regmap*,struct reg_sequence const*,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int regmap_multi_reg_write_bypassed(struct regmap *map,
        const struct reg_sequence *regs,
        int num_regs)
{
 int ret;
 bool bypass;

 map->lock(map->lock_arg);

 bypass = map->cache_bypass;
 map->cache_bypass = 1;

 ret = _regmap_multi_reg_write(map, regs, num_regs);

 map->cache_bypass = bypass;

 map->unlock(map->lock_arg);

 return ret;
}
