
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 long clk_pll_get_best_div_mul (struct clk_pll*,unsigned long,unsigned long,int *,int *,int *) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static long clk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *parent_rate)
{
 struct clk_pll *pll = to_clk_pll(hw);

 return clk_pll_get_best_div_mul(pll, rate, *parent_rate,
     ((void*)0), ((void*)0), ((void*)0));
}
