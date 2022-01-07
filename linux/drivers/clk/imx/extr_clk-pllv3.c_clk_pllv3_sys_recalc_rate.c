
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk_pllv3 {unsigned long div_mask; int base; } ;
struct clk_hw {int dummy; } ;


 unsigned long readl_relaxed (int ) ;
 struct clk_pllv3* to_clk_pllv3 (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pllv3_sys_recalc_rate(struct clk_hw *hw,
            unsigned long parent_rate)
{
 struct clk_pllv3 *pll = to_clk_pllv3(hw);
 u32 div = readl_relaxed(pll->base) & pll->div_mask;

 return parent_rate * div / 2;
}
