
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct clk_hw_onecell_data {int num; struct clk_hw** hws; } ;
struct clk_hw {TYPE_1__* init; } ;
struct TYPE_2__ {char* name; } ;


 scalar_t__ IS_ERR_OR_NULL (struct clk_hw*) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_hw_register (struct device*,struct clk_hw*) ;
 int devm_of_clk_add_hw_provider (struct device*,int ,struct clk_hw_onecell_data*) ;
 int of_clk_hw_onecell_get ;

int owl_clk_probe(struct device *dev, struct clk_hw_onecell_data *hw_clks)
{
 int i, ret;
 struct clk_hw *hw;

 for (i = 0; i < hw_clks->num; i++) {
  const char *name;

  hw = hw_clks->hws[i];
  if (IS_ERR_OR_NULL(hw))
   continue;

  name = hw->init->name;
  ret = devm_clk_hw_register(dev, hw);
  if (ret) {
   dev_err(dev, "Couldn't register clock %d - %s\n",
    i, name);
   return ret;
  }
 }

 ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get, hw_clks);
 if (ret)
  dev_err(dev, "Failed to add clock provider\n");

 return ret;
}
