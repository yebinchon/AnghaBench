
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct samsung_clk_pll {int con_reg; } ;
struct clk_hw {int dummy; } ;


 int PLL35XX_MDIV_MASK ;
 int PLL35XX_MDIV_SHIFT ;
 int PLL35XX_PDIV_MASK ;
 int PLL35XX_PDIV_SHIFT ;
 int PLL35XX_SDIV_MASK ;
 int PLL35XX_SDIV_SHIFT ;
 int do_div (int,int) ;
 int readl_relaxed (int ) ;
 struct samsung_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long samsung_pll35xx_recalc_rate(struct clk_hw *hw,
    unsigned long parent_rate)
{
 struct samsung_clk_pll *pll = to_clk_pll(hw);
 u32 mdiv, pdiv, sdiv, pll_con;
 u64 fvco = parent_rate;

 pll_con = readl_relaxed(pll->con_reg);
 mdiv = (pll_con >> PLL35XX_MDIV_SHIFT) & PLL35XX_MDIV_MASK;
 pdiv = (pll_con >> PLL35XX_PDIV_SHIFT) & PLL35XX_PDIV_MASK;
 sdiv = (pll_con >> PLL35XX_SDIV_SHIFT) & PLL35XX_SDIV_MASK;

 fvco *= mdiv;
 do_div(fvco, (pdiv << sdiv));

 return (unsigned long)fvco;
}
