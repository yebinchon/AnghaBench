
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_frac_internal {unsigned long* rates; int select; } ;
struct ccu_common {int features; int lock; scalar_t__ reg; scalar_t__ base; } ;


 int CCU_FEATURE_FRACTIONAL ;
 int EINVAL ;
 int ccu_helper_wait_for_lock (struct ccu_common*,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int writel (int,scalar_t__) ;

int ccu_frac_helper_set_rate(struct ccu_common *common,
        struct ccu_frac_internal *cf,
        unsigned long rate, u32 lock)
{
 unsigned long flags;
 u32 reg, sel;

 if (!(common->features & CCU_FEATURE_FRACTIONAL))
  return -EINVAL;

 if (cf->rates[0] == rate)
  sel = 0;
 else if (cf->rates[1] == rate)
  sel = cf->select;
 else
  return -EINVAL;

 spin_lock_irqsave(common->lock, flags);
 reg = readl(common->base + common->reg);
 reg &= ~cf->select;
 writel(reg | sel, common->base + common->reg);
 spin_unlock_irqrestore(common->lock, flags);

 ccu_helper_wait_for_lock(common, lock);

 return 0;
}
