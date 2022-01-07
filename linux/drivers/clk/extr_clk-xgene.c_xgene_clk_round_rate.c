
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {scalar_t__ divider_reg; } ;
struct xgene_clk {TYPE_1__ param; } ;
struct clk_hw {int dummy; } ;


 struct xgene_clk* to_xgene_clk (struct clk_hw*) ;

__attribute__((used)) static long xgene_clk_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct xgene_clk *pclk = to_xgene_clk(hw);
 unsigned long parent_rate = *prate;
 u32 divider;

 if (pclk->param.divider_reg) {

  if (rate > parent_rate)
   rate = parent_rate;
  divider = parent_rate / rate;
 } else {
  divider = 1;
 }

 return parent_rate / divider;
}
