
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pistachio_clk_pll {int dummy; } ;
struct clk_hw {int dummy; } ;
typedef enum pll_mode { ____Placeholder_pll_mode } pll_mode ;


 int PLL_CTRL3 ;
 int PLL_FRAC_CTRL3_DACPD ;
 int PLL_FRAC_CTRL3_DSMPD ;
 int PLL_MODE_INT ;
 int pll_readl (struct pistachio_clk_pll*,int ) ;
 int pll_writel (struct pistachio_clk_pll*,int,int ) ;
 struct pistachio_clk_pll* to_pistachio_pll (struct clk_hw*) ;

__attribute__((used)) static inline void pll_frac_set_mode(struct clk_hw *hw, enum pll_mode mode)
{
 struct pistachio_clk_pll *pll = to_pistachio_pll(hw);
 u32 val;

 val = pll_readl(pll, PLL_CTRL3);
 if (mode == PLL_MODE_INT)
  val |= PLL_FRAC_CTRL3_DSMPD | PLL_FRAC_CTRL3_DACPD;
 else
  val &= ~(PLL_FRAC_CTRL3_DSMPD | PLL_FRAC_CTRL3_DACPD);

 pll_writel(pll, val, PLL_CTRL3);
}
