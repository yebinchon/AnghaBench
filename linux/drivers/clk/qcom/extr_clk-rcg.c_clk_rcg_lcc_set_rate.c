
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct freq_tbl {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_rcg {int ns_reg; TYPE_1__ clkr; int freq_tbl; } ;
struct clk_hw {int clk; } ;


 int BIT (int) ;
 int EINVAL ;
 scalar_t__ __clk_is_enabled (int ) ;
 int __clk_rcg_set_rate (struct clk_rcg*,struct freq_tbl const*) ;
 struct freq_tbl* qcom_find_freq (int ,unsigned long) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_lcc_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);
 const struct freq_tbl *f;
 int ret;
 u32 gfm = BIT(10);

 f = qcom_find_freq(rcg->freq_tbl, rate);
 if (!f)
  return -EINVAL;


 regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, 0);
 ret = __clk_rcg_set_rate(rcg, f);

 if (__clk_is_enabled(hw->clk))
  regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, gfm);

 return ret;
}
