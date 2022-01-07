
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int dummy; } ;
struct clk_hw {int dummy; } ;


 int do_clk_register_clkdev (struct clk_hw*,struct clk_lookup**,char const*,char const*) ;

int clk_hw_register_clkdev(struct clk_hw *hw, const char *con_id,
 const char *dev_id)
{
 struct clk_lookup *cl;

 return do_clk_register_clkdev(hw, &cl, con_id, dev_id);
}
