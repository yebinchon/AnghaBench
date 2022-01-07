
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_fractional_divider {int freg_bit; int freg_status; } ;
struct stm32_pll_obj {struct stm32_fractional_divider div; } ;
struct clk_hw {int dummy; } ;


 int readl (int ) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;

__attribute__((used)) static int pll_frac_is_enabled(struct clk_hw *hw)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);
 struct stm32_fractional_divider *fd = &clk_elem->div;

 return (readl(fd->freg_status) >> fd->freg_bit) & 0x01;
}
