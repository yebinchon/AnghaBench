
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pllv3 {int div_shift; int div_mask; int base; } ;
struct clk_hw {int dummy; } ;


 int readl_relaxed (int ) ;
 struct clk_pllv3* to_clk_pllv3 (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pllv3_recalc_rate(struct clk_hw *hw,
        unsigned long parent_rate)
{
 struct clk_pllv3 *pll = to_clk_pllv3(hw);
 u32 div = (readl_relaxed(pll->base) >> pll->div_shift) & pll->div_mask;

 return (div == 1) ? parent_rate * 22 : parent_rate * 20;
}
