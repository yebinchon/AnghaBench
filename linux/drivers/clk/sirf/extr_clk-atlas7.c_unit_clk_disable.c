
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_unit {int regofs; scalar_t__ type; int lock; int bit; int idle_bit; } ;
struct clk_hw {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ CLK_UNIT_NOC_CLOCK ;
 scalar_t__ CLK_UNIT_NOC_SOCKET ;
 int SIRFSOC_CLKC_ROOT_CLK_EN0_CLR ;
 int SIRFSOC_CLKC_ROOT_CLK_EN0_SET ;
 int SIRFSOC_NOC_CLK_IDLEREQ_CLR ;
 int SIRFSOC_NOC_CLK_IDLEREQ_SET ;
 int SIRFSOC_NOC_CLK_IDLE_STATUS ;
 int SIRFSOC_NOC_CLK_SLVRDY_CLR ;
 int clkc_readl (int ) ;
 int clkc_writel (int,int) ;
 int cpu_relax () ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct clk_unit* to_unitclk (struct clk_hw*) ;
 int udelay (int) ;

__attribute__((used)) static void unit_clk_disable(struct clk_hw *hw)
{
 u32 reg;
 u32 i = 0;
 struct clk_unit *clk = to_unitclk(hw);
 unsigned long flags;

 reg = clk->regofs + SIRFSOC_CLKC_ROOT_CLK_EN0_CLR - SIRFSOC_CLKC_ROOT_CLK_EN0_SET;
 spin_lock_irqsave(clk->lock, flags);
 if (clk->type == CLK_UNIT_NOC_CLOCK) {
  clkc_writel(BIT(clk->idle_bit), SIRFSOC_NOC_CLK_IDLEREQ_SET);
  while (!(clkc_readl(SIRFSOC_NOC_CLK_IDLE_STATUS) &
    BIT(clk->idle_bit)) && (i++ < 100)) {
   cpu_relax();
   udelay(10);
  }

  if (i == 100) {
   pr_err("unit NoC Clock disconnect Error:timeout\n");

   clkc_writel(BIT(clk->idle_bit), SIRFSOC_NOC_CLK_IDLEREQ_CLR);
   goto err;
  }

 } else if (clk->type == CLK_UNIT_NOC_SOCKET)
  clkc_writel(BIT(clk->idle_bit), SIRFSOC_NOC_CLK_SLVRDY_CLR);

 clkc_writel(BIT(clk->bit), reg);
err:
 spin_unlock_irqrestore(clk->lock, flags);
}
