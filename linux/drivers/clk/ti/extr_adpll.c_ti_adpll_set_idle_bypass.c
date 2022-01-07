
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_adpll_data {int lock; scalar_t__ regs; } ;


 int ADPLL_CLKCTRL_IDLE ;
 scalar_t__ ADPLL_CLKCTRL_OFFSET ;
 int BIT (int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void ti_adpll_set_idle_bypass(struct ti_adpll_data *d)
{
 unsigned long flags;
 u32 v;

 spin_lock_irqsave(&d->lock, flags);
 v = readl_relaxed(d->regs + ADPLL_CLKCTRL_OFFSET);
 v |= BIT(ADPLL_CLKCTRL_IDLE);
 writel_relaxed(v, d->regs + ADPLL_CLKCTRL_OFFSET);
 spin_unlock_irqrestore(&d->lock, flags);
}
