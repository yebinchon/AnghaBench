
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_4__ {int regmap; } ;
struct clk_alpha_pll_postdiv {int num_post_div; int post_div_shift; int width; TYPE_2__ clkr; TYPE_1__* post_div_table; } ;
struct TYPE_3__ {int div; int val; } ;


 int BIT (int ) ;
 int DIV_ROUND_UP_ULL (unsigned long,unsigned long) ;
 int PLL_MODE (struct clk_alpha_pll_postdiv*) ;
 int PLL_USER_CTL (struct clk_alpha_pll_postdiv*) ;
 int PLL_VOTE_FSM_ENA ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct clk_alpha_pll_postdiv* to_clk_alpha_pll_postdiv (struct clk_hw*) ;

__attribute__((used)) static int clk_alpha_pll_postdiv_fabia_set_rate(struct clk_hw *hw,
    unsigned long rate, unsigned long parent_rate)
{
 struct clk_alpha_pll_postdiv *pll = to_clk_alpha_pll_postdiv(hw);
 int i, val = 0, div, ret;





 ret = regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
 if (ret)
  return ret;

 if (val & PLL_VOTE_FSM_ENA)
  return 0;

 div = DIV_ROUND_UP_ULL(parent_rate, rate);
 for (i = 0; i < pll->num_post_div; i++) {
  if (pll->post_div_table[i].div == div) {
   val = pll->post_div_table[i].val;
   break;
  }
 }

 return regmap_update_bits(pll->clkr.regmap, PLL_USER_CTL(pll),
    (BIT(pll->width) - 1) << pll->post_div_shift,
    val << pll->post_div_shift);
}
