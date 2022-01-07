
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pllv4 {int base; } ;
struct clk_hw {int dummy; } ;


 int PLL_EN ;
 int readl_relaxed (int ) ;
 struct clk_pllv4* to_clk_pllv4 (struct clk_hw*) ;

__attribute__((used)) static int clk_pllv4_is_enabled(struct clk_hw *hw)
{
 struct clk_pllv4 *pll = to_clk_pllv4(hw);

 if (readl_relaxed(pll->base) & PLL_EN)
  return 1;

 return 0;
}
