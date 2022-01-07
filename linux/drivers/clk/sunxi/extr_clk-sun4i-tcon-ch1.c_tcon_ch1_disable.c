
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcon_ch1_clk {int lock; int reg; } ;
struct clk_hw {int dummy; } ;


 int TCON_CH1_SCLK1_GATE_BIT ;
 int TCON_CH1_SCLK2_GATE_BIT ;
 struct tcon_ch1_clk* hw_to_tclk (struct clk_hw*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static void tcon_ch1_disable(struct clk_hw *hw)
{
 struct tcon_ch1_clk *tclk = hw_to_tclk(hw);
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&tclk->lock, flags);
 reg = readl(tclk->reg);
 reg &= ~(TCON_CH1_SCLK2_GATE_BIT | TCON_CH1_SCLK1_GATE_BIT);
 writel(reg, tclk->reg);
 spin_unlock_irqrestore(&tclk->lock, flags);
}
