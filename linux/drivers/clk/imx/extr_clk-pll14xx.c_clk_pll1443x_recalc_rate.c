
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clk_pll14xx {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;


 int KDIV_MASK ;
 int MDIV_MASK ;
 int MDIV_SHIFT ;
 int PDIV_MASK ;
 int PDIV_SHIFT ;
 int SDIV_MASK ;
 int SDIV_SHIFT ;
 int do_div (int,int) ;
 int readl_relaxed (scalar_t__) ;
 struct clk_pll14xx* to_clk_pll14xx (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pll1443x_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_pll14xx *pll = to_clk_pll14xx(hw);
 u32 mdiv, pdiv, sdiv, pll_div_ctl0, pll_div_ctl1;
 short int kdiv;
 u64 fvco = parent_rate;

 pll_div_ctl0 = readl_relaxed(pll->base + 4);
 pll_div_ctl1 = readl_relaxed(pll->base + 8);
 mdiv = (pll_div_ctl0 & MDIV_MASK) >> MDIV_SHIFT;
 pdiv = (pll_div_ctl0 & PDIV_MASK) >> PDIV_SHIFT;
 sdiv = (pll_div_ctl0 & SDIV_MASK) >> SDIV_SHIFT;
 kdiv = pll_div_ctl1 & KDIV_MASK;


 fvco *= (mdiv * 65536 + kdiv);
 pdiv *= 65536;

 do_div(fvco, pdiv << sdiv);

 return fvco;
}
