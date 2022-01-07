
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pic32_sys_pll {unsigned long idiv; int ctrl_reg; } ;
struct clk_hw {int dummy; } ;


 int PLL_MULT_MASK ;
 int PLL_MULT_SHIFT ;
 int PLL_ODIV_MASK ;
 int PLL_ODIV_SHIFT ;
 struct pic32_sys_pll* clkhw_to_spll (struct clk_hw*) ;
 int do_div (int,int) ;
 int readl (int ) ;
 int spll_odiv_to_divider (int) ;

__attribute__((used)) static unsigned long spll_clk_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct pic32_sys_pll *pll = clkhw_to_spll(hw);
 unsigned long pll_in_rate;
 u32 mult, odiv, div, v;
 u64 rate64;

 v = readl(pll->ctrl_reg);
 odiv = ((v >> PLL_ODIV_SHIFT) & PLL_ODIV_MASK);
 mult = ((v >> PLL_MULT_SHIFT) & PLL_MULT_MASK) + 1;
 div = spll_odiv_to_divider(odiv);




 pll_in_rate = parent_rate / pll->idiv;
 rate64 = pll_in_rate;
 rate64 *= mult;
 do_div(rate64, div);

 return rate64;
}
