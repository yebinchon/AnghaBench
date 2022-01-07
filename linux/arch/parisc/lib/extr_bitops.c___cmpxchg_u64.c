
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volatile u64 ;


 int _atomic_spin_lock_irqsave (int volatile*,unsigned long) ;
 int _atomic_spin_unlock_irqrestore (int volatile*,unsigned long) ;

u64 __cmpxchg_u64(volatile u64 *ptr, u64 old, u64 new)
{
 unsigned long flags;
 u64 prev;

 _atomic_spin_lock_irqsave(ptr, flags);
 if ((prev = *ptr) == old)
  *ptr = new;
 _atomic_spin_unlock_irqrestore(ptr, flags);
 return prev;
}
