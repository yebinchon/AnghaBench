
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_syscon {int clk_val; scalar_t__ hw_ctrld; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ U300_SYSCON_SBCER ;
 scalar_t__ syscon_vbase ;
 struct clk_syscon* to_syscon (struct clk_hw*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int syscon_clk_enable(struct clk_hw *hw)
{
 struct clk_syscon *sclk = to_syscon(hw);


 if (sclk->hw_ctrld)
  return 0;

 if (sclk->clk_val == 0xFFFFU)
  return 0;

 writew(sclk->clk_val, syscon_vbase + U300_SYSCON_SBCER);
 return 0;
}
