
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pllv3 {int div_mask; int div_shift; int base; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int clk_pllv3_wait_lock (struct clk_pllv3*) ;
 int readl_relaxed (int ) ;
 struct clk_pllv3* to_clk_pllv3 (struct clk_hw*) ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int clk_pllv3_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_pllv3 *pll = to_clk_pllv3(hw);
 u32 val, div;

 if (rate == parent_rate * 22)
  div = 1;
 else if (rate == parent_rate * 20)
  div = 0;
 else
  return -EINVAL;

 val = readl_relaxed(pll->base);
 val &= ~(pll->div_mask << pll->div_shift);
 val |= (div << pll->div_shift);
 writel_relaxed(val, pll->base);

 return clk_pllv3_wait_lock(pll);
}
