
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int isb () ;
 int krait_l2_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

u32 krait_get_l2_indirect_reg(u32 addr)
{
 u32 val;
 unsigned long flags;

 raw_spin_lock_irqsave(&krait_l2_lock, flags);




 asm volatile ("mcr p15, 3, %0, c15, c0, 6 @ l2cpselr" : : "r" (addr));
 isb();
 asm volatile ("mrc p15, 3, %0, c15, c0, 7 @ l2cpdr" : "=r" (val));

 raw_spin_unlock_irqrestore(&krait_l2_lock, flags);

 return val;
}
