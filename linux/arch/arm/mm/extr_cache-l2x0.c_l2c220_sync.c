
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __l2c220_cache_sync (int ) ;
 int l2x0_base ;
 int l2x0_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void l2c220_sync(void)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&l2x0_lock, flags);
 __l2c220_cache_sync(l2x0_base);
 raw_spin_unlock_irqrestore(&l2x0_lock, flags);
}
