
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pllv3 {int base; } ;
struct clk_hw {int dummy; } ;


 int BM_PLL_LOCK ;
 int readl_relaxed (int ) ;
 struct clk_pllv3* to_clk_pllv3 (struct clk_hw*) ;

__attribute__((used)) static int clk_pllv3_is_prepared(struct clk_hw *hw)
{
 struct clk_pllv3 *pll = to_clk_pllv3(hw);

 if (readl_relaxed(pll->base) & BM_PLL_LOCK)
  return 1;

 return 0;
}
