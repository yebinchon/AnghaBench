
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int core; } ;


 int clk_core_set_parent_nolock (int ,int ) ;

int clk_hw_set_parent(struct clk_hw *hw, struct clk_hw *parent)
{
 return clk_core_set_parent_nolock(hw->core, parent->core);
}
