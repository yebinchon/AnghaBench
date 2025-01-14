
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rcg2 {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_rcg2_clear_force_enable (struct clk_hw*) ;
 int clk_rcg2_set_force_enable (struct clk_hw*) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;
 int update_config (struct clk_rcg2*) ;

__attribute__((used)) static int clk_rcg2_shared_enable(struct clk_hw *hw)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 int ret;





 ret = clk_rcg2_set_force_enable(hw);
 if (ret)
  return ret;

 ret = update_config(rcg);
 if (ret)
  return ret;

 return clk_rcg2_clear_force_enable(hw);
}
