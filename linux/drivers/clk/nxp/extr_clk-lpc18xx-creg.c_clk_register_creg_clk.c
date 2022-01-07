
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct clk_init_data {char const** parent_names; int num_parents; scalar_t__ flags; int name; int ops; } ;
struct TYPE_3__ {struct clk_init_data* init; } ;
struct clk_creg_data {TYPE_1__ hw; struct regmap* reg; int name; int ops; } ;
struct clk {int dummy; } ;


 struct clk* clk_register (int *,TYPE_1__*) ;
 struct clk* devm_clk_register (struct device*,TYPE_1__*) ;

__attribute__((used)) static struct clk *clk_register_creg_clk(struct device *dev,
      struct clk_creg_data *creg_clk,
      const char **parent_name,
      struct regmap *syscon)
{
 struct clk_init_data init;

 init.ops = creg_clk->ops;
 init.name = creg_clk->name;
 init.parent_names = parent_name;
 init.num_parents = 1;
 init.flags = 0;

 creg_clk->reg = syscon;
 creg_clk->hw.init = &init;

 if (dev)
  return devm_clk_register(dev, &creg_clk->hw);

 return clk_register(((void*)0), &creg_clk->hw);
}
