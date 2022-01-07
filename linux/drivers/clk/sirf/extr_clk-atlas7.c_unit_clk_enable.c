
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_unit {scalar_t__ type; int lock; int idle_bit; int bit; int regofs; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ CLK_UNIT_NOC_CLOCK ;
 scalar_t__ CLK_UNIT_NOC_SOCKET ;
 int SIRFSOC_NOC_CLK_IDLEREQ_CLR ;
 int SIRFSOC_NOC_CLK_SLVRDY_SET ;
 int clkc_writel (int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_unit* to_unitclk (struct clk_hw*) ;

__attribute__((used)) static int unit_clk_enable(struct clk_hw *hw)
{
 u32 reg;
 struct clk_unit *clk = to_unitclk(hw);
 unsigned long flags;

 reg = clk->regofs;

 spin_lock_irqsave(clk->lock, flags);
 clkc_writel(BIT(clk->bit), reg);
 if (clk->type == CLK_UNIT_NOC_CLOCK)
  clkc_writel(BIT(clk->idle_bit), SIRFSOC_NOC_CLK_IDLEREQ_CLR);
 else if (clk->type == CLK_UNIT_NOC_SOCKET)
  clkc_writel(BIT(clk->idle_bit), SIRFSOC_NOC_CLK_SLVRDY_SET);

 spin_unlock_irqrestore(clk->lock, flags);
 return 0;
}
