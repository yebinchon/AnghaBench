
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_clk_common {int dummy; } ;
struct owl_pll {int pll_hw; struct owl_clk_common common; } ;
struct clk_hw {int dummy; } ;


 struct owl_pll* hw_to_owl_pll (struct clk_hw*) ;
 int owl_pll_set (struct owl_clk_common const*,int *,int) ;

__attribute__((used)) static int owl_pll_enable(struct clk_hw *hw)
{
 struct owl_pll *pll = hw_to_owl_pll(hw);
 const struct owl_clk_common *common = &pll->common;

 owl_pll_set(common, &pll->pll_hw, 1);

 return 0;
}
