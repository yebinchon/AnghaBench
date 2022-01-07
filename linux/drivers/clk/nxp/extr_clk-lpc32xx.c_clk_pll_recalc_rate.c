
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_pll_clk {int m_div; int n_div; int p_div; int mode; int reg; } ;
struct clk_hw {int dummy; } ;


 int PLL_BYPASS ;
 int PLL_CTRL_BYPASS ;
 int PLL_CTRL_DIRECT ;
 int PLL_CTRL_FEEDBACK ;
 int PLL_CTRL_FEEDDIV ;
 int PLL_CTRL_POSTDIV ;
 int PLL_CTRL_PREDIV ;
 int PLL_DIRECT ;
 int PLL_DIRECT_BYPASS ;
 int PLL_INTEGER ;
 int PLL_NON_INTEGER ;
 int clk_hw_get_name (struct clk_hw*) ;
 scalar_t__ clk_pll_is_enabled (struct clk_hw*) ;
 int clk_regmap ;
 scalar_t__ pll_is_valid (unsigned long,int,int,int) ;
 int pr_debug (char*,int ,unsigned long,int,int,int,int,unsigned long,unsigned long,int,unsigned long) ;
 int pr_err (char*,int ,unsigned long,unsigned long,unsigned long) ;
 int regmap_read (int ,int ,int*) ;
 struct lpc32xx_pll_clk* to_lpc32xx_pll_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pll_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct lpc32xx_pll_clk *clk = to_lpc32xx_pll_clk(hw);
 bool is_direct, is_bypass, is_feedback;
 unsigned long rate, cco_rate, ref_rate;
 u32 val;

 regmap_read(clk_regmap, clk->reg, &val);
 is_direct = val & PLL_CTRL_DIRECT;
 is_bypass = val & PLL_CTRL_BYPASS;
 is_feedback = val & PLL_CTRL_FEEDBACK;

 clk->m_div = ((val & PLL_CTRL_FEEDDIV) >> 1) + 1;
 clk->n_div = ((val & PLL_CTRL_PREDIV) >> 9) + 1;
 clk->p_div = ((val & PLL_CTRL_POSTDIV) >> 11) + 1;

 if (is_direct && is_bypass) {
  clk->p_div = 0;
  clk->mode = PLL_DIRECT_BYPASS;
  return parent_rate;
 }
 if (is_bypass) {
  clk->mode = PLL_BYPASS;
  return parent_rate / (1 << clk->p_div);
 }
 if (is_direct) {
  clk->p_div = 0;
  clk->mode = PLL_DIRECT;
 }

 ref_rate = parent_rate / clk->n_div;
 rate = cco_rate = ref_rate * clk->m_div;

 if (!is_direct) {
  if (is_feedback) {
   cco_rate *= (1 << clk->p_div);
   clk->mode = PLL_INTEGER;
  } else {
   rate /= (1 << clk->p_div);
   clk->mode = PLL_NON_INTEGER;
  }
 }

 pr_debug("%s: %lu: 0x%x: %d/%d/%d, %lu/%lu/%d => %lu\n",
   clk_hw_get_name(hw),
   parent_rate, val, is_direct, is_bypass, is_feedback,
   clk->n_div, clk->m_div, (1 << clk->p_div), rate);

 if (clk_pll_is_enabled(hw) &&
     !(pll_is_valid(parent_rate, 1, 1000000, 20000000)
       && pll_is_valid(cco_rate, 1, 156000000, 320000000)
       && pll_is_valid(ref_rate, 1, 1000000, 27000000)))
  pr_err("%s: PLL clocks are not in valid ranges: %lu/%lu/%lu\n",
         clk_hw_get_name(hw),
         parent_rate, cco_rate, ref_rate);

 return rate;
}
