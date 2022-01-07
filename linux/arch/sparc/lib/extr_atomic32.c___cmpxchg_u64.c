
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ATOMIC_HASH (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

u64 __cmpxchg_u64(u64 *ptr, u64 old, u64 new)
{
 unsigned long flags;
 u64 prev;

 spin_lock_irqsave(ATOMIC_HASH(ptr), flags);
 if ((prev = *ptr) == old)
  *ptr = new;
 spin_unlock_irqrestore(ATOMIC_HASH(ptr), flags);

 return prev;
}
