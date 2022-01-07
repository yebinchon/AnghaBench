
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_pll_config {int cfg1; int cfg0; } ;
struct clk_zx_pll {scalar_t__ reg_base; struct zx_pll_config* lookup_table; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ CFG0_CFG1_OFFSET ;
 int rate_to_idx (struct clk_zx_pll*,unsigned long) ;
 struct clk_zx_pll* to_clk_zx_pll (struct clk_hw*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int zx_pll_set_rate(struct clk_hw *hw, unsigned long rate,
      unsigned long parent_rate)
{

 struct clk_zx_pll *zx_pll = to_clk_zx_pll(hw);
 const struct zx_pll_config *config;
 int idx;

 idx = rate_to_idx(zx_pll, rate);
 config = &zx_pll->lookup_table[idx];

 writel_relaxed(config->cfg0, zx_pll->reg_base);
 writel_relaxed(config->cfg1, zx_pll->reg_base + CFG0_CFG1_OFFSET);

 return 0;
}
