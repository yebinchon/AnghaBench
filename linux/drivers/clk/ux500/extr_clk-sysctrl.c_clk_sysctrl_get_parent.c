
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_sysctrl {int parent_index; } ;
struct clk_hw {int dummy; } ;


 struct clk_sysctrl* to_clk_sysctrl (struct clk_hw*) ;

__attribute__((used)) static u8 clk_sysctrl_get_parent(struct clk_hw *hw)
{
 struct clk_sysctrl *clk = to_clk_sysctrl(hw);
 return clk->parent_index;
}
