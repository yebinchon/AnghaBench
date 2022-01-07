
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct samsung_clk_pll {scalar_t__ type; int con_reg; } ;
struct clk_hw {int dummy; } ;


 int PLL6552_MDIV_MASK ;
 int PLL6552_MDIV_SHIFT ;
 int PLL6552_MDIV_SHIFT_2416 ;
 int PLL6552_PDIV_MASK ;
 int PLL6552_PDIV_SHIFT ;
 int PLL6552_PDIV_SHIFT_2416 ;
 int PLL6552_SDIV_MASK ;
 int PLL6552_SDIV_SHIFT ;
 int do_div (int,int) ;
 scalar_t__ pll_6552_s3c2416 ;
 int readl_relaxed (int ) ;
 struct samsung_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long samsung_pll6552_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct samsung_clk_pll *pll = to_clk_pll(hw);
 u32 mdiv, pdiv, sdiv, pll_con;
 u64 fvco = parent_rate;

 pll_con = readl_relaxed(pll->con_reg);
 if (pll->type == pll_6552_s3c2416) {
  mdiv = (pll_con >> PLL6552_MDIV_SHIFT_2416) & PLL6552_MDIV_MASK;
  pdiv = (pll_con >> PLL6552_PDIV_SHIFT_2416) & PLL6552_PDIV_MASK;
 } else {
  mdiv = (pll_con >> PLL6552_MDIV_SHIFT) & PLL6552_MDIV_MASK;
  pdiv = (pll_con >> PLL6552_PDIV_SHIFT) & PLL6552_PDIV_MASK;
 }
 sdiv = (pll_con >> PLL6552_SDIV_SHIFT) & PLL6552_SDIV_MASK;

 fvco *= mdiv;
 do_div(fvco, (pdiv << sdiv));

 return (unsigned long)fvco;
}
