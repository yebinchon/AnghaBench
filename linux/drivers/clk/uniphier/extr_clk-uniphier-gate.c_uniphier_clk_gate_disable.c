
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int pr_warn (char*) ;
 scalar_t__ uniphier_clk_gate_endisable (struct clk_hw*,int ) ;

__attribute__((used)) static void uniphier_clk_gate_disable(struct clk_hw *hw)
{
 if (uniphier_clk_gate_endisable(hw, 0) < 0)
  pr_warn("failed to disable clk\n");
}
