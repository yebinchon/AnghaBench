
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 int clk_enable_regmap (struct clk_hw*) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 struct clk_pll* to_clk_pll (int ) ;
 int wait_for_pll (struct clk_pll*) ;

__attribute__((used)) static int clk_pll_vote_enable(struct clk_hw *hw)
{
 int ret;
 struct clk_pll *p = to_clk_pll(clk_hw_get_parent(hw));

 ret = clk_enable_regmap(hw);
 if (ret)
  return ret;

 return wait_for_pll(p);
}
