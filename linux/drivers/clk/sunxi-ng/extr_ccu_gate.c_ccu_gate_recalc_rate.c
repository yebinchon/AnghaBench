
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct TYPE_2__ {int features; unsigned long prediv; } ;
struct ccu_gate {TYPE_1__ common; } ;


 int CCU_FEATURE_ALL_PREDIV ;
 struct ccu_gate* hw_to_ccu_gate (struct clk_hw*) ;

__attribute__((used)) static unsigned long ccu_gate_recalc_rate(struct clk_hw *hw,
       unsigned long parent_rate)
{
 struct ccu_gate *cg = hw_to_ccu_gate(hw);
 unsigned long rate = parent_rate;

 if (cg->common.features & CCU_FEATURE_ALL_PREDIV)
  rate /= cg->common.prediv;

 return rate;
}
