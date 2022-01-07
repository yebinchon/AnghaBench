
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32f4_pll {scalar_t__ offset; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int dummy; } ;


 scalar_t__ base ;
 int readl (scalar_t__) ;
 struct clk_gate* to_clk_gate (struct clk_hw*) ;
 struct stm32f4_pll* to_stm32f4_pll (struct clk_gate*) ;

__attribute__((used)) static unsigned long stm32f4_pll_recalc(struct clk_hw *hw,
  unsigned long parent_rate)
{
 struct clk_gate *gate = to_clk_gate(hw);
 struct stm32f4_pll *pll = to_stm32f4_pll(gate);
 unsigned long n;

 n = (readl(base + pll->offset) >> 6) & 0x1ff;

 return parent_rate * n;
}
