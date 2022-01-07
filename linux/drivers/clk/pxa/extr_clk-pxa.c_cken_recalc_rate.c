
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_fixed_factor {int hw; } ;
struct pxa_clk {struct clk_fixed_factor hp; struct clk_fixed_factor lp; scalar_t__ (* is_in_low_power ) () ;} ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long (* recalc_rate ) (int *,unsigned long) ;} ;


 int __clk_hw_set_clk (int *,struct clk_hw*) ;
 TYPE_1__ clk_fixed_factor_ops ;
 scalar_t__ stub1 () ;
 unsigned long stub2 (int *,unsigned long) ;
 struct pxa_clk* to_pxa_clk (struct clk_hw*) ;

__attribute__((used)) static unsigned long cken_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 struct pxa_clk *pclk = to_pxa_clk(hw);
 struct clk_fixed_factor *fix;

 if (!pclk->is_in_low_power || pclk->is_in_low_power())
  fix = &pclk->lp;
 else
  fix = &pclk->hp;
 __clk_hw_set_clk(&fix->hw, hw);
 return clk_fixed_factor_ops.recalc_rate(&fix->hw, parent_rate);
}
