
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_pll {int post_div_shift; scalar_t__ post_div_width; int config_reg; TYPE_1__ clkr; int n_reg; int m_reg; int l_reg; } ;
struct clk_hw {int dummy; } ;


 int BIT (scalar_t__) ;
 int do_div (int,int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long
clk_pll_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 struct clk_pll *pll = to_clk_pll(hw);
 u32 l, m, n, config;
 unsigned long rate;
 u64 tmp;

 regmap_read(pll->clkr.regmap, pll->l_reg, &l);
 regmap_read(pll->clkr.regmap, pll->m_reg, &m);
 regmap_read(pll->clkr.regmap, pll->n_reg, &n);

 l &= 0x3ff;
 m &= 0x7ffff;
 n &= 0x7ffff;

 rate = parent_rate * l;
 if (n) {
  tmp = parent_rate;
  tmp *= m;
  do_div(tmp, n);
  rate += tmp;
 }
 if (pll->post_div_width) {
  regmap_read(pll->clkr.regmap, pll->config_reg, &config);
  config >>= pll->post_div_shift;
  config &= BIT(pll->post_div_width) - 1;
  rate /= config + 1;
 }

 return rate;
}
