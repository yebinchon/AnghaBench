
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32f4_pll_div {int hw_pll; } ;
struct clk_hw {int dummy; } ;
struct clk_divider {int dummy; } ;
struct TYPE_2__ {int (* set_rate ) (struct clk_hw*,unsigned long,unsigned long) ;} ;


 TYPE_1__ clk_divider_ops ;
 int stm32f4_pll_disable (int ) ;
 int stm32f4_pll_enable (int ) ;
 int stm32f4_pll_is_enabled (int ) ;
 int stub1 (struct clk_hw*,unsigned long,unsigned long) ;
 struct clk_divider* to_clk_divider (struct clk_hw*) ;
 struct stm32f4_pll_div* to_pll_div_clk (struct clk_divider*) ;

__attribute__((used)) static int stm32f4_pll_div_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 int pll_state, ret;

 struct clk_divider *div = to_clk_divider(hw);
 struct stm32f4_pll_div *pll_div = to_pll_div_clk(div);

 pll_state = stm32f4_pll_is_enabled(pll_div->hw_pll);

 if (pll_state)
  stm32f4_pll_disable(pll_div->hw_pll);

 ret = clk_divider_ops.set_rate(hw, rate, parent_rate);

 if (pll_state)
  stm32f4_pll_enable(pll_div->hw_pll);

 return ret;
}
