
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ INTEGRATOR_HDR_CTRL_OFFSET ;
 scalar_t__ cm_base ;
 int cm_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void cm_control(u32 mask, u32 set)
{
 unsigned long flags;
 u32 val;

 raw_spin_lock_irqsave(&cm_lock, flags);
 val = readl(cm_base + INTEGRATOR_HDR_CTRL_OFFSET) & ~mask;
 writel(val | set, cm_base + INTEGRATOR_HDR_CTRL_OFFSET);
 raw_spin_unlock_irqrestore(&cm_lock, flags);
}
