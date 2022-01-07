
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sam9x60_pll {int mul; int div; } ;
struct clk_hw {int dummy; } ;


 struct sam9x60_pll* to_sam9x60_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long sam9x60_pll_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct sam9x60_pll *pll = to_sam9x60_pll(hw);

 return (parent_rate * (pll->mul + 1)) / (pll->div + 1);
}
