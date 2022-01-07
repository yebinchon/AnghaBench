
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct samsung_clk_pll {int con_reg; } ;
struct clk_hw {int dummy; } ;


 int PLL2126_MDIV_MASK ;
 int PLL2126_MDIV_SHIFT ;
 int PLL2126_PDIV_MASK ;
 int PLL2126_PDIV_SHIFT ;
 int PLL2126_SDIV_MASK ;
 int PLL2126_SDIV_SHIFT ;
 int do_div (int,int) ;
 int readl_relaxed (int ) ;
 struct samsung_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long samsung_pll2126_recalc_rate(struct clk_hw *hw,
    unsigned long parent_rate)
{
 struct samsung_clk_pll *pll = to_clk_pll(hw);
 u32 pll_con, mdiv, pdiv, sdiv;
 u64 fvco = parent_rate;

 pll_con = readl_relaxed(pll->con_reg);
 mdiv = (pll_con >> PLL2126_MDIV_SHIFT) & PLL2126_MDIV_MASK;
 pdiv = (pll_con >> PLL2126_PDIV_SHIFT) & PLL2126_PDIV_MASK;
 sdiv = (pll_con >> PLL2126_SDIV_SHIFT) & PLL2126_SDIV_MASK;

 fvco *= (mdiv + 8);
 do_div(fvco, (pdiv + 2) << sdiv);

 return (unsigned long)fvco;
}
