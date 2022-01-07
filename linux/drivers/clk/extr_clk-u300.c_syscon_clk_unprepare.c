
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_syscon {scalar_t__ clk_val; int reset; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ U300_SYSCON_SBCER_UART_CLK_EN ;
 int syscon_block_reset_enable (struct clk_syscon*) ;
 struct clk_syscon* to_syscon (struct clk_hw*) ;

__attribute__((used)) static void syscon_clk_unprepare(struct clk_hw *hw)
{
 struct clk_syscon *sclk = to_syscon(hw);


 if (sclk->clk_val == U300_SYSCON_SBCER_UART_CLK_EN)
  return;

 if (!sclk->reset)
  syscon_block_reset_enable(sclk);
}
