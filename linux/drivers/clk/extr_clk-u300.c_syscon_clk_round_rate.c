
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_syscon {scalar_t__ clk_val; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ U300_SYSCON_SBCER_CPU_CLK_EN ;
 struct clk_syscon* to_syscon (struct clk_hw*) ;

__attribute__((used)) static long
syscon_clk_round_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long *prate)
{
 struct clk_syscon *sclk = to_syscon(hw);

 if (sclk->clk_val != U300_SYSCON_SBCER_CPU_CLK_EN)
  return *prate;

 if (rate <= 13000000)
  return 13000000;
 if (rate <= 52000000)
  return 52000000;
 if (rate <= 104000000)
  return 104000000;
 return 208000000;
}
