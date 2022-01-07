
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; int * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_fixed_rate {unsigned long fixed_rate; unsigned long fixed_accuracy; struct clk_hw hw; } ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_fixed_rate_ops ;
 int clk_hw_register (struct device*,struct clk_hw*) ;
 int kfree (struct clk_fixed_rate*) ;
 struct clk_fixed_rate* kzalloc (int,int ) ;

struct clk_hw *clk_hw_register_fixed_rate_with_accuracy(struct device *dev,
  const char *name, const char *parent_name, unsigned long flags,
  unsigned long fixed_rate, unsigned long fixed_accuracy)
{
 struct clk_fixed_rate *fixed;
 struct clk_hw *hw;
 struct clk_init_data init;
 int ret;


 fixed = kzalloc(sizeof(*fixed), GFP_KERNEL);
 if (!fixed)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &clk_fixed_rate_ops;
 init.flags = flags;
 init.parent_names = (parent_name ? &parent_name: ((void*)0));
 init.num_parents = (parent_name ? 1 : 0);


 fixed->fixed_rate = fixed_rate;
 fixed->fixed_accuracy = fixed_accuracy;
 fixed->hw.init = &init;


 hw = &fixed->hw;
 ret = clk_hw_register(dev, hw);
 if (ret) {
  kfree(fixed);
  hw = ERR_PTR(ret);
 }

 return hw;
}
