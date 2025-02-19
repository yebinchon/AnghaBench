
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk_parent_data {int index; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; struct clk_parent_data* parent_data; int * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_fixed_factor {unsigned int mult; unsigned int div; struct clk_hw hw; } ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_fixed_factor_ops ;
 int clk_hw_register (struct device*,struct clk_hw*) ;
 int kfree (struct clk_fixed_factor*) ;
 struct clk_fixed_factor* kmalloc (int,int ) ;
 int of_clk_hw_register (struct device_node*,struct clk_hw*) ;

__attribute__((used)) static struct clk_hw *
__clk_hw_register_fixed_factor(struct device *dev, struct device_node *np,
  const char *name, const char *parent_name, int index,
  unsigned long flags, unsigned int mult, unsigned int div)
{
 struct clk_fixed_factor *fix;
 struct clk_init_data init = { };
 struct clk_parent_data pdata = { .index = index };
 struct clk_hw *hw;
 int ret;

 fix = kmalloc(sizeof(*fix), GFP_KERNEL);
 if (!fix)
  return ERR_PTR(-ENOMEM);


 fix->mult = mult;
 fix->div = div;
 fix->hw.init = &init;

 init.name = name;
 init.ops = &clk_fixed_factor_ops;
 init.flags = flags;
 if (parent_name)
  init.parent_names = &parent_name;
 else
  init.parent_data = &pdata;
 init.num_parents = 1;

 hw = &fix->hw;
 if (dev)
  ret = clk_hw_register(dev, hw);
 else
  ret = of_clk_hw_register(np, hw);
 if (ret) {
  kfree(fix);
  hw = ERR_PTR(ret);
 }

 return hw;
}
