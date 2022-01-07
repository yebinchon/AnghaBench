
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
struct clk_fepll {TYPE_2__ cdiv; } ;


 int BIT (int ) ;
 int clk_fepll_vco_calc_rate (struct clk_fepll*,unsigned long) ;
 int do_div (unsigned long,int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_fepll* to_clk_fepll (struct clk_hw*) ;

__attribute__((used)) static unsigned long
clk_cpu_div_recalc_rate(struct clk_hw *hw,
   unsigned long parent_rate)
{
 struct clk_fepll *pll = to_clk_fepll(hw);
 u32 cdiv, pre_div;
 u64 rate;

 regmap_read(pll->cdiv.clkr.regmap, pll->cdiv.reg, &cdiv);
 cdiv = (cdiv >> pll->cdiv.shift) & (BIT(pll->cdiv.width) - 1);






 if (cdiv > 10)
  pre_div = (cdiv + 1) * 2;
 else
  pre_div = cdiv + 12;

 rate = clk_fepll_vco_calc_rate(pll, parent_rate) * 2;
 do_div(rate, pre_div);

 return rate;
}
