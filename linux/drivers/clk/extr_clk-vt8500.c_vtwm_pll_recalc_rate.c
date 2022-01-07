
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pll {int type; int reg; } ;
struct clk_hw {int dummy; } ;






 unsigned long VT8500_PLL_DIV (int ) ;
 unsigned long VT8500_PLL_MUL (int ) ;
 unsigned long WM8650_PLL_DIV (int ) ;
 unsigned long WM8650_PLL_MUL (int ) ;
 unsigned long WM8750_PLL_DIV (int ) ;
 unsigned long WM8750_PLL_MUL (int ) ;
 unsigned long WM8850_PLL_DIV (int ) ;
 unsigned long WM8850_PLL_MUL (int ) ;
 int readl (int ) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long vtwm_pll_recalc_rate(struct clk_hw *hw,
    unsigned long parent_rate)
{
 struct clk_pll *pll = to_clk_pll(hw);
 u32 pll_val = readl(pll->reg);
 unsigned long pll_freq;

 switch (pll->type) {
 case 131:
  pll_freq = parent_rate * VT8500_PLL_MUL(pll_val);
  pll_freq /= VT8500_PLL_DIV(pll_val);
  break;
 case 130:
  pll_freq = parent_rate * WM8650_PLL_MUL(pll_val);
  pll_freq /= WM8650_PLL_DIV(pll_val);
  break;
 case 129:
  pll_freq = parent_rate * WM8750_PLL_MUL(pll_val);
  pll_freq /= WM8750_PLL_DIV(pll_val);
  break;
 case 128:
  pll_freq = parent_rate * WM8850_PLL_MUL(pll_val);
  pll_freq /= WM8850_PLL_DIV(pll_val);
  break;
 default:
  pll_freq = 0;
 }

 return pll_freq;
}
