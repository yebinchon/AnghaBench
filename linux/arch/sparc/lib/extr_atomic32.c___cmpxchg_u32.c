
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ volatile u32 ;


 int ATOMIC_HASH (scalar_t__ volatile*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

unsigned long __cmpxchg_u32(volatile u32 *ptr, u32 old, u32 new)
{
 unsigned long flags;
 u32 prev;

 spin_lock_irqsave(ATOMIC_HASH(ptr), flags);
 if ((prev = *ptr) == old)
  *ptr = new;
 spin_unlock_irqrestore(ATOMIC_HASH(ptr), flags);

 return (unsigned long)prev;
}
