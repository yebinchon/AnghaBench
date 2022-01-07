
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int bcm_perf_readl (int ) ;
 int bcm_perf_writel (int ,int ) ;
 int reset_mutex ;
 int reset_reg ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __bcm63xx_core_set_reset(u32 mask, int enable)
{
 unsigned long flags;
 u32 val;

 if (!mask)
  return;

 spin_lock_irqsave(&reset_mutex, flags);
 val = bcm_perf_readl(reset_reg);

 if (enable)
  val &= ~mask;
 else
  val |= mask;

 bcm_perf_writel(val, reset_reg);
 spin_unlock_irqrestore(&reset_mutex, flags);
}
