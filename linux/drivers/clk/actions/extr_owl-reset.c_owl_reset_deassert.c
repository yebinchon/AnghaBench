
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct owl_reset_map {int bit; int reg; } ;
struct owl_reset {int regmap; struct owl_reset_map* reset_map; } ;


 int regmap_update_bits (int ,int ,int ,int ) ;
 struct owl_reset* to_owl_reset (struct reset_controller_dev*) ;

__attribute__((used)) static int owl_reset_deassert(struct reset_controller_dev *rcdev,
         unsigned long id)
{
 struct owl_reset *reset = to_owl_reset(rcdev);
 const struct owl_reset_map *map = &reset->reset_map[id];

 return regmap_update_bits(reset->regmap, map->reg, map->bit, map->bit);
}
