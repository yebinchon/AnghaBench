
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll {int id; int regmap; } ;
struct clk_hw {int dummy; } ;


 int clk_pll_ready (int ,int ) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int clk_pll_is_prepared(struct clk_hw *hw)
{
 struct clk_pll *pll = to_clk_pll(hw);

 return clk_pll_ready(pll->regmap, pll->id);
}
