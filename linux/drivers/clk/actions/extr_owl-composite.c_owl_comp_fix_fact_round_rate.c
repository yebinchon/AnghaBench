
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clk_fixed_factor {int hw; } ;
struct TYPE_3__ {struct clk_fixed_factor fix_fact_hw; } ;
struct owl_composite {TYPE_2__* fix_fact_ops; TYPE_1__ rate; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {long (* round_rate ) (int *,unsigned long,unsigned long*) ;} ;


 struct owl_composite* hw_to_owl_comp (struct clk_hw*) ;
 long stub1 (int *,unsigned long,unsigned long*) ;

__attribute__((used)) static long owl_comp_fix_fact_round_rate(struct clk_hw *hw, unsigned long rate,
   unsigned long *parent_rate)
{
 struct owl_composite *comp = hw_to_owl_comp(hw);
 struct clk_fixed_factor *fix_fact_hw = &comp->rate.fix_fact_hw;

 return comp->fix_fact_ops->round_rate(&fix_fact_hw->hw, rate, parent_rate);
}
