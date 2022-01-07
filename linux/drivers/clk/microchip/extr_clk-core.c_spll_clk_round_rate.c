
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_sys_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 struct pic32_sys_pll* clkhw_to_spll (struct clk_hw*) ;
 long spll_calc_mult_div (struct pic32_sys_pll*,unsigned long,unsigned long,int *,int *) ;

__attribute__((used)) static long spll_clk_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *parent_rate)
{
 struct pic32_sys_pll *pll = clkhw_to_spll(hw);

 return spll_calc_mult_div(pll, rate, *parent_rate, ((void*)0), ((void*)0));
}
