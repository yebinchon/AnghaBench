
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int reg_divider_shift; int reg_divider_width; scalar_t__ reg_divider_offset; scalar_t__ divider_reg; } ;
struct xgene_clk {TYPE_1__ param; } ;
struct clk_hw {int dummy; } ;


 int clk_hw_get_name (struct clk_hw*) ;
 int pr_debug (char*,int ,unsigned long,unsigned long) ;
 struct xgene_clk* to_xgene_clk (struct clk_hw*) ;
 int xgene_clk_read (scalar_t__) ;

__attribute__((used)) static unsigned long xgene_clk_recalc_rate(struct clk_hw *hw,
    unsigned long parent_rate)
{
 struct xgene_clk *pclk = to_xgene_clk(hw);
 u32 data;

 if (pclk->param.divider_reg) {
  data = xgene_clk_read(pclk->param.divider_reg +
     pclk->param.reg_divider_offset);
  data >>= pclk->param.reg_divider_shift;
  data &= (1 << pclk->param.reg_divider_width) - 1;

  pr_debug("%s clock recalc rate %ld parent %ld\n",
   clk_hw_get_name(hw),
   parent_rate / data, parent_rate);

  return parent_rate / data;
 } else {
  pr_debug("%s clock recalc rate %ld parent %ld\n",
   clk_hw_get_name(hw), parent_rate, parent_rate);
  return parent_rate;
 }
}
