
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pic32_sys_clk {TYPE_1__* core; int slew_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int reg_lock; } ;


 int LOCK_TIMEOUT_US ;
 int SLEW_BUSY ;
 int SLEW_SYSDIV ;
 int SLEW_SYSDIV_SHIFT ;
 struct pic32_sys_clk* clkhw_to_sys_clk (struct clk_hw*) ;
 int pic32_syskey_unlock () ;
 int readl (int ) ;
 int readl_poll_timeout_atomic (int ,int,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int sclk_set_rate(struct clk_hw *hw,
    unsigned long rate, unsigned long parent_rate)
{
 struct pic32_sys_clk *sclk = clkhw_to_sys_clk(hw);
 unsigned long flags;
 u32 v, div;
 int err;

 div = parent_rate / rate;

 spin_lock_irqsave(&sclk->core->reg_lock, flags);


 v = readl(sclk->slew_reg);
 v &= ~(SLEW_SYSDIV << SLEW_SYSDIV_SHIFT);
 v |= (div - 1) << SLEW_SYSDIV_SHIFT;

 pic32_syskey_unlock();

 writel(v, sclk->slew_reg);


 err = readl_poll_timeout_atomic(sclk->slew_reg, v,
     !(v & SLEW_BUSY), 1, LOCK_TIMEOUT_US);

 spin_unlock_irqrestore(&sclk->core->reg_lock, flags);

 return err;
}
