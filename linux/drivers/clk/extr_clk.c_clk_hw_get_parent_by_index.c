
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int core; } ;
struct clk_core {struct clk_hw* hw; } ;


 struct clk_core* clk_core_get_parent_by_index (int ,unsigned int) ;

struct clk_hw *
clk_hw_get_parent_by_index(const struct clk_hw *hw, unsigned int index)
{
 struct clk_core *parent;

 parent = clk_core_get_parent_by_index(hw->core, index);

 return !parent ? ((void*)0) : parent->hw;
}
