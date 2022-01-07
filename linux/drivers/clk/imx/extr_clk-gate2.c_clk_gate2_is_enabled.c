
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_gate2 {int bit_idx; int reg; } ;


 int clk_gate2_reg_is_enabled (int ,int ) ;
 struct clk_gate2* to_clk_gate2 (struct clk_hw*) ;

__attribute__((used)) static int clk_gate2_is_enabled(struct clk_hw *hw)
{
 struct clk_gate2 *gate = to_clk_gate2(hw);

 return clk_gate2_reg_is_enabled(gate->reg, gate->bit_idx);
}
