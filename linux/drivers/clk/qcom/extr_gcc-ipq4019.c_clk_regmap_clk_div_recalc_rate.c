
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef int u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int regmap; } ;
struct TYPE_4__ {int shift; int width; int reg; TYPE_1__ clkr; } ;
struct clk_fepll {int fixed_div; struct clk_div_table* div_table; TYPE_2__ cdiv; } ;
struct clk_div_table {int div; int val; } ;


 int BIT (int ) ;
 unsigned long clk_fepll_vco_calc_rate (struct clk_fepll*,unsigned long) ;
 int do_div (unsigned long,int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_fepll* to_clk_fepll (struct clk_hw*) ;

__attribute__((used)) static unsigned long
clk_regmap_clk_div_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct clk_fepll *pll = to_clk_fepll(hw);
 u32 cdiv, pre_div = 1;
 u64 rate;
 const struct clk_div_table *clkt;

 if (pll->fixed_div) {
  pre_div = pll->fixed_div;
 } else {
  regmap_read(pll->cdiv.clkr.regmap, pll->cdiv.reg, &cdiv);
  cdiv = (cdiv >> pll->cdiv.shift) & (BIT(pll->cdiv.width) - 1);

  for (clkt = pll->div_table; clkt->div; clkt++) {
   if (clkt->val == cdiv)
    pre_div = clkt->div;
  }
 }

 rate = clk_fepll_vco_calc_rate(pll, parent_rate);
 do_div(rate, pre_div);

 return rate;
}
