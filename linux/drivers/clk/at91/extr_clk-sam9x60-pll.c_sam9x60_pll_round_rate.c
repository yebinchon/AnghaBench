
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sam9x60_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 long sam9x60_pll_get_best_div_mul (struct sam9x60_pll*,unsigned long,unsigned long,int) ;
 struct sam9x60_pll* to_sam9x60_pll (struct clk_hw*) ;

__attribute__((used)) static long sam9x60_pll_round_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long *parent_rate)
{
 struct sam9x60_pll *pll = to_sam9x60_pll(hw);

 return sam9x60_pll_get_best_div_mul(pll, rate, *parent_rate, 0);
}
