
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_prcmu {int is_enabled; } ;
struct clk_hw {int dummy; } ;


 struct clk_prcmu* to_clk_prcmu (struct clk_hw*) ;

__attribute__((used)) static int clk_prcmu_enable(struct clk_hw *hw)
{
 struct clk_prcmu *clk = to_clk_prcmu(hw);
 clk->is_enabled = 1;
 return 0;
}
