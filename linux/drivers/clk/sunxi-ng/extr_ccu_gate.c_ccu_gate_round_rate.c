
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int features; int prediv; } ;
struct ccu_gate {TYPE_1__ common; } ;


 int CCU_FEATURE_ALL_PREDIV ;
 int CLK_SET_RATE_PARENT ;
 int clk_hw_get_flags (struct clk_hw*) ;
 int clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_round_rate (int ,unsigned long) ;
 struct ccu_gate* hw_to_ccu_gate (struct clk_hw*) ;

__attribute__((used)) static long ccu_gate_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *prate)
{
 struct ccu_gate *cg = hw_to_ccu_gate(hw);
 int div = 1;

 if (cg->common.features & CCU_FEATURE_ALL_PREDIV)
  div = cg->common.prediv;

 if (clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) {
  unsigned long best_parent = rate;

  if (cg->common.features & CCU_FEATURE_ALL_PREDIV)
   best_parent *= div;
  *prate = clk_hw_round_rate(clk_hw_get_parent(hw), best_parent);
 }

 return *prate / div;
}
