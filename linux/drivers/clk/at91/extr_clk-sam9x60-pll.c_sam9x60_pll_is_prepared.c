
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sam9x60_pll {int id; int regmap; } ;
struct clk_hw {int dummy; } ;


 int sam9x60_pll_ready (int ,int ) ;
 struct sam9x60_pll* to_sam9x60_pll (struct clk_hw*) ;

__attribute__((used)) static int sam9x60_pll_is_prepared(struct clk_hw *hw)
{
 struct sam9x60_pll *pll = to_sam9x60_pll(hw);

 return sam9x60_pll_ready(pll->regmap, pll->id);
}
