
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_pllv3 {int base; int power_bit; scalar_t__ powerup_set; } ;
struct clk_hw {int dummy; } ;


 int clk_pllv3_wait_lock (struct clk_pllv3*) ;
 int readl_relaxed (int ) ;
 struct clk_pllv3* to_clk_pllv3 (struct clk_hw*) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int clk_pllv3_prepare(struct clk_hw *hw)
{
 struct clk_pllv3 *pll = to_clk_pllv3(hw);
 u32 val;

 val = readl_relaxed(pll->base);
 if (pll->powerup_set)
  val |= pll->power_bit;
 else
  val &= ~pll->power_bit;
 writel_relaxed(val, pll->base);

 return clk_pllv3_wait_lock(pll);
}
