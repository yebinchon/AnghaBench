
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;

__attribute__((used)) static unsigned long cpu_clk_recalc_rate(struct clk_hw *hw,
 unsigned long parent_rate)
{




 struct clk_hw *parent_clk = clk_hw_get_parent(hw);
 return clk_hw_get_rate(parent_clk);
}
