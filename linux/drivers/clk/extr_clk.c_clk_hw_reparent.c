
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int * core; } ;


 int clk_core_reparent (int *,int *) ;

void clk_hw_reparent(struct clk_hw *hw, struct clk_hw *new_parent)
{
 if (!hw)
  return;

 clk_core_reparent(hw->core, !new_parent ? ((void*)0) : new_parent->core);
}
