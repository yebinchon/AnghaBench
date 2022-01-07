
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_clk_cpugear_data {int mask; int regbase; int num_parents; int parent_names; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct uniphier_clk_cpugear {struct clk_hw hw; int mask; int regbase; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; int num_parents; int parent_names; int flags; int * ops; } ;


 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int devm_clk_hw_register (struct device*,struct clk_hw*) ;
 struct uniphier_clk_cpugear* devm_kzalloc (struct device*,int,int ) ;
 int uniphier_clk_cpugear_ops ;

struct clk_hw *uniphier_clk_register_cpugear(struct device *dev,
      struct regmap *regmap,
      const char *name,
    const struct uniphier_clk_cpugear_data *data)
{
 struct uniphier_clk_cpugear *gear;
 struct clk_init_data init;
 int ret;

 gear = devm_kzalloc(dev, sizeof(*gear), GFP_KERNEL);
 if (!gear)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &uniphier_clk_cpugear_ops;
 init.flags = CLK_SET_RATE_PARENT;
 init.parent_names = data->parent_names;
 init.num_parents = data->num_parents,

 gear->regmap = regmap;
 gear->regbase = data->regbase;
 gear->mask = data->mask;
 gear->hw.init = &init;

 ret = devm_clk_hw_register(dev, &gear->hw);
 if (ret)
  return ERR_PTR(ret);

 return &gear->hw;
}
