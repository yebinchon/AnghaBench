
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_clk_fixed_rate_data {int fixed_rate; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; scalar_t__ num_parents; int * parent_names; int * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_fixed_rate {struct clk_hw hw; int fixed_rate; } ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_fixed_rate_ops ;
 int devm_clk_hw_register (struct device*,struct clk_hw*) ;
 struct clk_fixed_rate* devm_kzalloc (struct device*,int,int ) ;

struct clk_hw *uniphier_clk_register_fixed_rate(struct device *dev,
      const char *name,
    const struct uniphier_clk_fixed_rate_data *data)
{
 struct clk_fixed_rate *fixed;
 struct clk_init_data init;
 int ret;


 fixed = devm_kzalloc(dev, sizeof(*fixed), GFP_KERNEL);
 if (!fixed)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &clk_fixed_rate_ops;
 init.parent_names = ((void*)0);
 init.num_parents = 0;

 fixed->fixed_rate = data->fixed_rate;
 fixed->hw.init = &init;

 ret = devm_clk_hw_register(dev, &fixed->hw);
 if (ret)
  return ERR_PTR(ret);

 return &fixed->hw;
}
