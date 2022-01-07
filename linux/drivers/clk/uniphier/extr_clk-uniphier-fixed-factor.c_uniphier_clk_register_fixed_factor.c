
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_clk_fixed_factor_data {int div; int mult; scalar_t__ parent_name; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; int num_parents; scalar_t__* parent_names; int flags; int * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_fixed_factor {struct clk_hw hw; int div; int mult; } ;


 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_fixed_factor_ops ;
 int devm_clk_hw_register (struct device*,struct clk_hw*) ;
 struct clk_fixed_factor* devm_kzalloc (struct device*,int,int ) ;

struct clk_hw *uniphier_clk_register_fixed_factor(struct device *dev,
        const char *name,
   const struct uniphier_clk_fixed_factor_data *data)
{
 struct clk_fixed_factor *fix;
 struct clk_init_data init;
 int ret;

 fix = devm_kzalloc(dev, sizeof(*fix), GFP_KERNEL);
 if (!fix)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &clk_fixed_factor_ops;
 init.flags = data->parent_name ? CLK_SET_RATE_PARENT : 0;
 init.parent_names = data->parent_name ? &data->parent_name : ((void*)0);
 init.num_parents = data->parent_name ? 1 : 0;

 fix->mult = data->mult;
 fix->div = data->div;
 fix->hw.init = &init;

 ret = devm_clk_hw_register(dev, &fix->hw);
 if (ret)
  return ERR_PTR(ret);

 return &fix->hw;
}
