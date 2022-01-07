
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ of_node; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;


 int EPROBE_DEFER ;
 int IS_ERR (struct clk_hw*) ;
 int PTR_ERR (struct clk_hw*) ;
 struct clk* __clk_get_sys (struct device*,char const*,char const*) ;
 struct clk* clk_hw_create_clk (struct device*,struct clk_hw*,char const*,char const*) ;
 char* dev_name (struct device*) ;
 struct clk_hw* of_clk_get_hw (scalar_t__,int ,char const*) ;

struct clk *clk_get(struct device *dev, const char *con_id)
{
 const char *dev_id = dev ? dev_name(dev) : ((void*)0);
 struct clk_hw *hw;

 if (dev && dev->of_node) {
  hw = of_clk_get_hw(dev->of_node, 0, con_id);
  if (!IS_ERR(hw) || PTR_ERR(hw) == -EPROBE_DEFER)
   return clk_hw_create_clk(dev, hw, dev_id, con_id);
 }

 return __clk_get_sys(dev, dev_id, con_id);
}
