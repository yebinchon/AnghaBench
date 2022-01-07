
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_5__ {struct clk_hw hw; } ;
struct TYPE_4__ {struct clk_hw hw; } ;
struct flexgen {TYPE_2__ fdiv; TYPE_1__ pdiv; } ;
struct TYPE_6__ {unsigned long (* recalc_rate ) (struct clk_hw*,unsigned long) ;} ;


 int __clk_hw_set_clk (struct clk_hw*,struct clk_hw*) ;
 TYPE_3__ clk_divider_ops ;
 unsigned long stub1 (struct clk_hw*,unsigned long) ;
 unsigned long stub2 (struct clk_hw*,unsigned long) ;
 struct flexgen* to_flexgen (struct clk_hw*) ;

__attribute__((used)) static unsigned long flexgen_recalc_rate(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct flexgen *flexgen = to_flexgen(hw);
 struct clk_hw *pdiv_hw = &flexgen->pdiv.hw;
 struct clk_hw *fdiv_hw = &flexgen->fdiv.hw;
 unsigned long mid_rate;

 __clk_hw_set_clk(pdiv_hw, hw);
 __clk_hw_set_clk(fdiv_hw, hw);

 mid_rate = clk_divider_ops.recalc_rate(pdiv_hw, parent_rate);

 return clk_divider_ops.recalc_rate(fdiv_hw, mid_rate);
}
