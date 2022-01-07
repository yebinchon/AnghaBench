
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_syscon {scalar_t__ reset; } ;
struct clk_hw {int dummy; } ;


 int syscon_block_reset_disable (struct clk_syscon*) ;
 struct clk_syscon* to_syscon (struct clk_hw*) ;

__attribute__((used)) static int syscon_clk_prepare(struct clk_hw *hw)
{
 struct clk_syscon *sclk = to_syscon(hw);


 if (sclk->reset)
  syscon_block_reset_disable(sclk);
 return 0;
}
