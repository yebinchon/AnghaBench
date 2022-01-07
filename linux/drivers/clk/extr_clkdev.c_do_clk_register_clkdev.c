
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int dummy; } ;
struct clk_hw {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct clk_hw*) ;
 int PTR_ERR (struct clk_hw*) ;
 struct clk_lookup* __clk_register_clkdev (struct clk_hw*,char const*,char*,...) ;

__attribute__((used)) static int do_clk_register_clkdev(struct clk_hw *hw,
 struct clk_lookup **cl, const char *con_id, const char *dev_id)
{
 if (IS_ERR(hw))
  return PTR_ERR(hw);




 if (dev_id)
  *cl = __clk_register_clkdev(hw, con_id, "%s", dev_id);
 else
  *cl = __clk_register_clkdev(hw, con_id, ((void*)0));

 return *cl ? 0 : -ENOMEM;
}
