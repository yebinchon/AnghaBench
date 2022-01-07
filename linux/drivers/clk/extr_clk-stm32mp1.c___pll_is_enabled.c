
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_pll_obj {int reg; } ;
struct clk_hw {int dummy; } ;


 int PLL_ON ;
 int readl_relaxed (int ) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;

__attribute__((used)) static int __pll_is_enabled(struct clk_hw *hw)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);

 return readl_relaxed(clk_elem->reg) & PLL_ON;
}
