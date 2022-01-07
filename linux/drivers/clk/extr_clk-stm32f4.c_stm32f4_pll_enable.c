
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32f4_pll {int bit_rdy_idx; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int reg; } ;
struct TYPE_2__ {int (* enable ) (struct clk_hw*) ;scalar_t__ (* is_enabled ) (struct clk_hw*) ;} ;


 int BIT (int ) ;
 unsigned int PLL_TIMEOUT ;
 TYPE_1__ clk_gate_ops ;
 int readl (int ) ;
 scalar_t__ stub1 (struct clk_hw*) ;
 int stub2 (struct clk_hw*) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;
 struct stm32f4_pll* to_stm32f4_pll (struct clk_gate*) ;

__attribute__((used)) static int stm32f4_pll_enable(struct clk_hw *hw)
{
 struct clk_gate *gate = to_clk_gate(hw);
 struct stm32f4_pll *pll = to_stm32f4_pll(gate);
 int bit_status;
 unsigned int timeout = PLL_TIMEOUT;

 if (clk_gate_ops.is_enabled(hw))
  return 0;

 clk_gate_ops.enable(hw);

 do {
  bit_status = !(readl(gate->reg) & BIT(pll->bit_rdy_idx));

 } while (bit_status && --timeout);

 return bit_status;
}
