
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_fractional_divider {unsigned long fshift; scalar_t__ fwidth; int freg_value; } ;
struct stm32_pll_obj {struct stm32_fractional_divider div; } ;
struct clk_hw {int dummy; } ;


 unsigned long GENMASK (scalar_t__,int ) ;
 unsigned long readl (int ) ;
 struct stm32_pll_obj* to_pll (struct clk_hw*) ;

__attribute__((used)) static unsigned long pll_read_frac(struct clk_hw *hw)
{
 struct stm32_pll_obj *clk_elem = to_pll(hw);
 struct stm32_fractional_divider *fd = &clk_elem->div;

 return (readl(fd->freg_value) >> fd->fshift) &
  GENMASK(fd->fwidth - 1, 0);
}
