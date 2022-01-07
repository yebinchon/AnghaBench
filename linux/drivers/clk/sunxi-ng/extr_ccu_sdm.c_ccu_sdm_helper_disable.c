
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_sdm_internal {int enable; int tuning_enable; scalar_t__ tuning_reg; } ;
struct ccu_common {int features; int lock; scalar_t__ base; scalar_t__ reg; } ;


 int CCU_FEATURE_SIGMA_DELTA_MOD ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int writel (int,scalar_t__) ;

void ccu_sdm_helper_disable(struct ccu_common *common,
       struct ccu_sdm_internal *sdm)
{
 unsigned long flags;
 u32 reg;

 if (!(common->features & CCU_FEATURE_SIGMA_DELTA_MOD))
  return;

 spin_lock_irqsave(common->lock, flags);
 reg = readl(common->base + common->reg);
 writel(reg & ~sdm->enable, common->base + common->reg);
 spin_unlock_irqrestore(common->lock, flags);

 spin_lock_irqsave(common->lock, flags);
 reg = readl(common->base + sdm->tuning_reg);
 writel(reg & ~sdm->tuning_enable, common->base + sdm->tuning_reg);
 spin_unlock_irqrestore(common->lock, flags);
}
