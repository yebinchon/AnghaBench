
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int patch_regs; int cache_bypass; int async; int lock_arg; int (* unlock ) (int ) ;int (* lock ) (int ) ;struct reg_sequence* patch; } ;
struct reg_sequence {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 int _regmap_multi_reg_write (struct regmap*,struct reg_sequence const*,int) ;
 struct reg_sequence* krealloc (struct reg_sequence*,int,int ) ;
 int memcpy (struct reg_sequence*,struct reg_sequence const*,int) ;
 int regmap_async_complete (struct regmap*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

int regmap_register_patch(struct regmap *map, const struct reg_sequence *regs,
     int num_regs)
{
 struct reg_sequence *p;
 int ret;
 bool bypass;

 if (WARN_ONCE(num_regs <= 0, "invalid registers number (%d)\n",
     num_regs))
  return 0;

 p = krealloc(map->patch,
       sizeof(struct reg_sequence) * (map->patch_regs + num_regs),
       GFP_KERNEL);
 if (p) {
  memcpy(p + map->patch_regs, regs, num_regs * sizeof(*regs));
  map->patch = p;
  map->patch_regs += num_regs;
 } else {
  return -ENOMEM;
 }

 map->lock(map->lock_arg);

 bypass = map->cache_bypass;

 map->cache_bypass = 1;
 map->async = 1;

 ret = _regmap_multi_reg_write(map, regs, num_regs);

 map->async = 0;
 map->cache_bypass = bypass;

 map->unlock(map->lock_arg);

 regmap_async_complete(map);

 return ret;
}
