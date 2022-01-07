
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk_pllv3 {unsigned long div_mask; int base; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 int clk_pllv3_wait_lock (struct clk_pllv3*) ;
 unsigned long readl_relaxed (int ) ;
 struct clk_pllv3* to_clk_pllv3 (struct clk_hw*) ;
 int writel_relaxed (unsigned long,int ) ;

__attribute__((used)) static int clk_pllv3_sys_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_pllv3 *pll = to_clk_pllv3(hw);
 unsigned long min_rate = parent_rate * 54 / 2;
 unsigned long max_rate = parent_rate * 108 / 2;
 u32 val, div;

 if (rate < min_rate || rate > max_rate)
  return -EINVAL;

 div = rate * 2 / parent_rate;
 val = readl_relaxed(pll->base);
 val &= ~pll->div_mask;
 val |= div;
 writel_relaxed(val, pll->base);

 return clk_pllv3_wait_lock(pll);
}
