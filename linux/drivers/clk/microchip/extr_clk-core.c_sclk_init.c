
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pic32_sys_clk {int slew_div; TYPE_1__* core; int slew_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int reg_lock; } ;


 int SLEW_DIV ;
 int SLEW_DIV_SHIFT ;
 int SLEW_DOWNEN ;
 int SLEW_UPEN ;
 struct pic32_sys_clk* clkhw_to_sys_clk (struct clk_hw*) ;
 struct clk_hw* pic32_sclk_hw ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static void sclk_init(struct clk_hw *hw)
{
 struct pic32_sys_clk *sclk = clkhw_to_sys_clk(hw);
 unsigned long flags;
 u32 v;


 pic32_sclk_hw = hw;


 if (sclk->slew_div) {
  spin_lock_irqsave(&sclk->core->reg_lock, flags);
  v = readl(sclk->slew_reg);
  v &= ~(SLEW_DIV << SLEW_DIV_SHIFT);
  v |= sclk->slew_div << SLEW_DIV_SHIFT;
  v |= SLEW_DOWNEN | SLEW_UPEN;
  writel(v, sclk->slew_reg);
  spin_unlock_irqrestore(&sclk->core->reg_lock, flags);
 }
}
