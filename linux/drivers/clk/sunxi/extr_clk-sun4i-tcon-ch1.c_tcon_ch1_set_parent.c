
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tcon_ch1_clk {int lock; int reg; } ;
struct clk_hw {int dummy; } ;


 int TCON_CH1_SCLK2_MUX_MASK ;
 int TCON_CH1_SCLK2_MUX_SHIFT ;
 struct tcon_ch1_clk* hw_to_tclk (struct clk_hw*) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int tcon_ch1_set_parent(struct clk_hw *hw, u8 index)
{
 struct tcon_ch1_clk *tclk = hw_to_tclk(hw);
 unsigned long flags;
 u32 reg;

 spin_lock_irqsave(&tclk->lock, flags);
 reg = readl(tclk->reg);
 reg &= ~(TCON_CH1_SCLK2_MUX_MASK << TCON_CH1_SCLK2_MUX_SHIFT);
 reg |= index << TCON_CH1_SCLK2_MUX_SHIFT;
 writel(reg, tclk->reg);
 spin_unlock_irqrestore(&tclk->lock, flags);

 return 0;
}
