
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll {unsigned long div; int mul; } ;
struct clk_hw {int dummy; } ;


 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_pll *pll = to_clk_pll(hw);

 if (!pll->div || !pll->mul)
  return 0;

 return (parent_rate / pll->div) * (pll->mul + 1);
}
