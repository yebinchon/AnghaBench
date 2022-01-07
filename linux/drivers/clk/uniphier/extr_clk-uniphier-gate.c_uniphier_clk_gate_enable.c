
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int uniphier_clk_gate_endisable (struct clk_hw*,int) ;

__attribute__((used)) static int uniphier_clk_gate_enable(struct clk_hw *hw)
{
 return uniphier_clk_gate_endisable(hw, 1);
}
