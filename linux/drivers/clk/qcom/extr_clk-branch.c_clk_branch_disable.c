
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int clk_branch_check_halt ;
 int clk_branch_toggle (struct clk_hw*,int,int ) ;

__attribute__((used)) static void clk_branch_disable(struct clk_hw *hw)
{
 clk_branch_toggle(hw, 0, clk_branch_check_halt);
}
