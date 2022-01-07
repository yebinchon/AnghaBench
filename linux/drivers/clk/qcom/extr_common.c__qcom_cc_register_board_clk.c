
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; int * ops; scalar_t__ flags; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_fixed_rate {unsigned long fixed_rate; TYPE_1__ hw; } ;
struct clk_fixed_factor {int mult; int div; TYPE_1__ hw; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int clk_fixed_factor_ops ;
 int clk_fixed_rate_ops ;
 int devm_clk_hw_register (struct device*,TYPE_1__*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 struct device_node* of_find_node_by_path (char*) ;
 struct device_node* of_get_child_by_name (struct device_node*,char const*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int _qcom_cc_register_board_clk(struct device *dev, const char *path,
           const char *name, unsigned long rate,
           bool add_factor)
{
 struct device_node *node = ((void*)0);
 struct device_node *clocks_node;
 struct clk_fixed_factor *factor;
 struct clk_fixed_rate *fixed;
 struct clk_init_data init_data = { };
 int ret;

 clocks_node = of_find_node_by_path("/clocks");
 if (clocks_node) {
  node = of_get_child_by_name(clocks_node, path);
  of_node_put(clocks_node);
 }

 if (!node) {
  fixed = devm_kzalloc(dev, sizeof(*fixed), GFP_KERNEL);
  if (!fixed)
   return -EINVAL;

  fixed->fixed_rate = rate;
  fixed->hw.init = &init_data;

  init_data.name = path;
  init_data.ops = &clk_fixed_rate_ops;

  ret = devm_clk_hw_register(dev, &fixed->hw);
  if (ret)
   return ret;
 }
 of_node_put(node);

 if (add_factor) {
  factor = devm_kzalloc(dev, sizeof(*factor), GFP_KERNEL);
  if (!factor)
   return -EINVAL;

  factor->mult = factor->div = 1;
  factor->hw.init = &init_data;

  init_data.name = name;
  init_data.parent_names = &path;
  init_data.num_parents = 1;
  init_data.flags = 0;
  init_data.ops = &clk_fixed_factor_ops;

  ret = devm_clk_hw_register(dev, &factor->hw);
  if (ret)
   return ret;
 }

 return 0;
}
