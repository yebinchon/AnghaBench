
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct samsung_clk_pll {int con_reg; } ;
struct clk_hw {int dummy; } ;


 int PLL2550X_M_MASK ;
 int PLL2550X_M_SHIFT ;
 int PLL2550X_P_MASK ;
 int PLL2550X_P_SHIFT ;
 int PLL2550X_R_MASK ;
 int PLL2550X_R_SHIFT ;
 int PLL2550X_S_MASK ;
 int PLL2550X_S_SHIFT ;
 int do_div (int,int) ;
 int readl_relaxed (int ) ;
 struct samsung_clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long samsung_pll2550x_recalc_rate(struct clk_hw *hw,
    unsigned long parent_rate)
{
 struct samsung_clk_pll *pll = to_clk_pll(hw);
 u32 r, p, m, s, pll_stat;
 u64 fvco = parent_rate;

 pll_stat = readl_relaxed(pll->con_reg);
 r = (pll_stat >> PLL2550X_R_SHIFT) & PLL2550X_R_MASK;
 if (!r)
  return 0;
 p = (pll_stat >> PLL2550X_P_SHIFT) & PLL2550X_P_MASK;
 m = (pll_stat >> PLL2550X_M_SHIFT) & PLL2550X_M_MASK;
 s = (pll_stat >> PLL2550X_S_SHIFT) & PLL2550X_S_MASK;

 fvco *= m;
 do_div(fvco, (p << s));

 return (unsigned long)fvco;
}
