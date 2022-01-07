
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pll_freq_tbl {int n; int m; int l; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_pll {int n_reg; TYPE_1__ clkr; int m_reg; int l_reg; int mode_reg; int freq_tbl; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int PLL_BYPASSNL ;
 int PLL_OUTCTRL ;
 int PLL_RESET_N ;
 int clk_pll_disable (struct clk_hw*) ;
 int clk_pll_sr2_enable (struct clk_hw*) ;
 struct pll_freq_tbl* find_freq (int ,unsigned long) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int
clk_pll_sr2_set_rate(struct clk_hw *hw, unsigned long rate, unsigned long prate)
{
 struct clk_pll *pll = to_clk_pll(hw);
 const struct pll_freq_tbl *f;
 bool enabled;
 u32 mode;
 u32 enable_mask = PLL_OUTCTRL | PLL_BYPASSNL | PLL_RESET_N;

 f = find_freq(pll->freq_tbl, rate);
 if (!f)
  return -EINVAL;

 regmap_read(pll->clkr.regmap, pll->mode_reg, &mode);
 enabled = (mode & enable_mask) == enable_mask;

 if (enabled)
  clk_pll_disable(hw);

 regmap_update_bits(pll->clkr.regmap, pll->l_reg, 0x3ff, f->l);
 regmap_update_bits(pll->clkr.regmap, pll->m_reg, 0x7ffff, f->m);
 regmap_update_bits(pll->clkr.regmap, pll->n_reg, 0x7ffff, f->n);

 if (enabled)
  clk_pll_sr2_enable(hw);

 return 0;
}
