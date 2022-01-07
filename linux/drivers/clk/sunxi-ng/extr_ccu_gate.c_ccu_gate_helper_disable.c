
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_common {int lock; scalar_t__ reg; scalar_t__ base; } ;


 int readl (scalar_t__) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int writel (int,scalar_t__) ;

void ccu_gate_helper_disable(struct ccu_common *common, u32 gate)
{
 unsigned long flags;
 u32 reg;

 if (!gate)
  return;

 spin_lock_irqsave(common->lock, flags);

 reg = readl(common->base + common->reg);
 writel(reg & ~gate, common->base + common->reg);

 spin_unlock_irqrestore(common->lock, flags);
}
