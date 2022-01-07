
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_pll_clk {int mode; unsigned long m_div; unsigned long n_div; int p_div; int reg; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;

 int PLL_CTRL_BYPASS ;
 int PLL_CTRL_DIRECT ;
 int PLL_CTRL_FEEDBACK ;




 int clk_regmap ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct lpc32xx_pll_clk* to_lpc32xx_pll_clk (struct clk_hw*) ;

__attribute__((used)) static int clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long parent_rate)
{
 struct lpc32xx_pll_clk *clk = to_lpc32xx_pll_clk(hw);
 u32 val;
 unsigned long new_rate;


 switch (clk->mode) {
 case 131:
  val = PLL_CTRL_DIRECT;
  val |= (clk->m_div - 1) << 1;
  val |= (clk->n_div - 1) << 9;
  new_rate = (parent_rate * clk->m_div) / clk->n_div;
  break;
 case 132:
  val = PLL_CTRL_BYPASS;
  val |= (clk->p_div - 1) << 11;
  new_rate = parent_rate / (1 << (clk->p_div));
  break;
 case 130:
  val = PLL_CTRL_DIRECT | PLL_CTRL_BYPASS;
  new_rate = parent_rate;
  break;
 case 129:
  val = PLL_CTRL_FEEDBACK;
  val |= (clk->m_div - 1) << 1;
  val |= (clk->n_div - 1) << 9;
  val |= (clk->p_div - 1) << 11;
  new_rate = (parent_rate * clk->m_div) / clk->n_div;
  break;
 case 128:
  val = 0x0;
  val |= (clk->m_div - 1) << 1;
  val |= (clk->n_div - 1) << 9;
  val |= (clk->p_div - 1) << 11;
  new_rate = (parent_rate * clk->m_div) /
    (clk->n_div * (1 << clk->p_div));
  break;
 default:
  return -EINVAL;
 }


 if (new_rate != rate)
  return -EINVAL;

 return regmap_update_bits(clk_regmap, clk->reg, 0x1FFFF, val);
}
