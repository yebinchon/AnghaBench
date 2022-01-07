
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct of_phandle_args {int np; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk_hw {struct clk_core* core; } ;
struct clk_core {struct device_node* of_node; struct device* dev; TYPE_1__* parents; } ;
struct TYPE_2__ {char* fw_name; int index; } ;


 int ENOENT ;
 struct clk_core* ERR_CAST (struct clk_hw*) ;
 struct clk_hw* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct clk_hw*) ;
 struct clk_hw* clk_find_hw (char const*,char const*) ;
 char* dev_name (struct device*) ;
 struct clk_hw* of_clk_get_hw_from_clkspec (struct of_phandle_args*) ;
 int of_node_put (int ) ;
 int of_parse_clkspec (struct device_node*,int,char const*,struct of_phandle_args*) ;

__attribute__((used)) static struct clk_core *clk_core_get(struct clk_core *core, u8 p_index)
{
 const char *name = core->parents[p_index].fw_name;
 int index = core->parents[p_index].index;
 struct clk_hw *hw = ERR_PTR(-ENOENT);
 struct device *dev = core->dev;
 const char *dev_id = dev ? dev_name(dev) : ((void*)0);
 struct device_node *np = core->of_node;
 struct of_phandle_args clkspec;

 if (np && (name || index >= 0) &&
     !of_parse_clkspec(np, index, name, &clkspec)) {
  hw = of_clk_get_hw_from_clkspec(&clkspec);
  of_node_put(clkspec.np);
 } else if (name) {




  hw = clk_find_hw(dev_id, name);
 }

 if (IS_ERR(hw))
  return ERR_CAST(hw);

 return hw->core;
}
