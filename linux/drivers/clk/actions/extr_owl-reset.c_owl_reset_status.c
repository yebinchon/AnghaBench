
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct reset_controller_dev {int dummy; } ;
struct owl_reset_map {int bit; int reg; } ;
struct owl_reset {int regmap; struct owl_reset_map* reset_map; } ;


 int regmap_read (int ,int ,int*) ;
 struct owl_reset* to_owl_reset (struct reset_controller_dev*) ;

__attribute__((used)) static int owl_reset_status(struct reset_controller_dev *rcdev,
       unsigned long id)
{
 struct owl_reset *reset = to_owl_reset(rcdev);
 const struct owl_reset_map *map = &reset->reset_map[id];
 u32 reg;
 int ret;

 ret = regmap_read(reset->regmap, map->reg, &reg);
 if (ret)
  return ret;





 return !(map->bit & reg);
}
