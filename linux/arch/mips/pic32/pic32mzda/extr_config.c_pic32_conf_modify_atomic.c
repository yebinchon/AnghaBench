
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int config_lock ;
 int pic32_conf_base ;
 int readl (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int) ;

__attribute__((used)) static u32 pic32_conf_modify_atomic(u32 offset, u32 mask, u32 set)
{
 u32 v;
 unsigned long flags;

 spin_lock_irqsave(&config_lock, flags);
 v = readl(pic32_conf_base + offset);
 v &= ~mask;
 v |= (set & mask);
 writel(v, pic32_conf_base + offset);
 spin_unlock_irqrestore(&config_lock, flags);

 return 0;
}
