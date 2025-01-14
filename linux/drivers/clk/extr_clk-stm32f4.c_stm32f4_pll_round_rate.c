
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32f4_pll {unsigned long n_start; } ;
struct clk_hw {int dummy; } ;
struct clk_gate {int dummy; } ;


 struct clk_gate* to_clk_gate (struct clk_hw*) ;
 struct stm32f4_pll* to_stm32f4_pll (struct clk_gate*) ;

__attribute__((used)) static long stm32f4_pll_round_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long *prate)
{
 struct clk_gate *gate = to_clk_gate(hw);
 struct stm32f4_pll *pll = to_stm32f4_pll(gate);
 unsigned long n;

 n = rate / *prate;

 if (n < pll->n_start)
  n = pll->n_start;
 else if (n > 432)
  n = 432;

 return *prate * n;
}
