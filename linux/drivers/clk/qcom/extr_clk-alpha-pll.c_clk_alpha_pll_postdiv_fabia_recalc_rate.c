
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int regmap; } ;
struct clk_alpha_pll_postdiv {int post_div_shift; int num_post_div; TYPE_1__* post_div_table; int width; TYPE_2__ clkr; } ;
struct TYPE_3__ {int val; int div; } ;


 int BIT (int ) ;
 int PLL_USER_CTL (struct clk_alpha_pll_postdiv*) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_alpha_pll_postdiv* to_clk_alpha_pll_postdiv (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_alpha_pll_postdiv_fabia_recalc_rate(struct clk_hw *hw,
     unsigned long parent_rate)
{
 struct clk_alpha_pll_postdiv *pll = to_clk_alpha_pll_postdiv(hw);
 u32 i, div = 1, val;
 int ret;

 ret = regmap_read(pll->clkr.regmap, PLL_USER_CTL(pll), &val);
 if (ret)
  return ret;

 val >>= pll->post_div_shift;
 val &= BIT(pll->width) - 1;

 for (i = 0; i < pll->num_post_div; i++) {
  if (pll->post_div_table[i].val == val) {
   div = pll->post_div_table[i].div;
   break;
  }
 }

 return (parent_rate / div);
}
