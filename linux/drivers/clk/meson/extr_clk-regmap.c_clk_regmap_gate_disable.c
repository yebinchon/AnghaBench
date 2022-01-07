
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 int clk_regmap_gate_endisable (struct clk_hw*,int ) ;

__attribute__((used)) static void clk_regmap_gate_disable(struct clk_hw *hw)
{
 clk_regmap_gate_endisable(hw, 0);
}
