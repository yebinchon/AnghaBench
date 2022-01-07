
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATOMIC_HASH (unsigned long*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

unsigned long ___change_bit(unsigned long *addr, unsigned long mask)
{
 unsigned long old, flags;

 spin_lock_irqsave(ATOMIC_HASH(addr), flags);
 old = *addr;
 *addr = old ^ mask;
 spin_unlock_irqrestore(ATOMIC_HASH(addr), flags);

 return old & mask;
}
