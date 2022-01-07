
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int regmap; } ;
struct clk_rcg2 {scalar_t__ hid_width; TYPE_1__ clkr; scalar_t__ mnd_width; } ;
struct clk_hw {int dummy; } ;


 int BIT (scalar_t__) ;
 int CFG_MODE_MASK ;
 int CFG_MODE_SHIFT ;
 int CFG_SRC_DIV_SHIFT ;
 int RCG_CFG_OFFSET (struct clk_rcg2*) ;
 int RCG_M_OFFSET (struct clk_rcg2*) ;
 int RCG_N_OFFSET (struct clk_rcg2*) ;
 unsigned long calc_rate (unsigned long,int,int,int,int) ;
 int regmap_read (int ,int ,int*) ;
 struct clk_rcg2* to_clk_rcg2 (struct clk_hw*) ;

__attribute__((used)) static unsigned long
clk_rcg2_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
{
 struct clk_rcg2 *rcg = to_clk_rcg2(hw);
 u32 cfg, hid_div, m = 0, n = 0, mode = 0, mask;

 regmap_read(rcg->clkr.regmap, RCG_CFG_OFFSET(rcg), &cfg);

 if (rcg->mnd_width) {
  mask = BIT(rcg->mnd_width) - 1;
  regmap_read(rcg->clkr.regmap, RCG_M_OFFSET(rcg), &m);
  m &= mask;
  regmap_read(rcg->clkr.regmap, RCG_N_OFFSET(rcg), &n);
  n = ~n;
  n &= mask;
  n += m;
  mode = cfg & CFG_MODE_MASK;
  mode >>= CFG_MODE_SHIFT;
 }

 mask = BIT(rcg->hid_width) - 1;
 hid_div = cfg >> CFG_SRC_DIV_SHIFT;
 hid_div &= mask;

 return calc_rate(parent_rate, m, n, mode, hid_div);
}
