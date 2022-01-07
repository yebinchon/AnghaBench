
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_frac_internal {int enable; } ;
struct ccu_common {int features; int lock; scalar_t__ reg; scalar_t__ base; } ;


 int CCU_FEATURE_FRACTIONAL ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int writel (int,scalar_t__) ;

void ccu_frac_helper_disable(struct ccu_common *common,
        struct ccu_frac_internal *cf)
{
 unsigned long flags;
 u32 reg;

 if (!(common->features & CCU_FEATURE_FRACTIONAL))
  return;

 spin_lock_irqsave(common->lock, flags);
 reg = readl(common->base + common->reg);
 writel(reg | cf->enable, common->base + common->reg);
 spin_unlock_irqrestore(common->lock, flags);
}
