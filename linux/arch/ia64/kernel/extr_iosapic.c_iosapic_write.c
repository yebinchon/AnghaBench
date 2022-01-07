
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iosapic {int lock; int addr; } ;


 int __iosapic_write (int ,unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
iosapic_write(struct iosapic *iosapic, unsigned int reg, u32 val)
{
 unsigned long flags;

 spin_lock_irqsave(&iosapic->lock, flags);
 __iosapic_write(iosapic->addr, reg, val);
 spin_unlock_irqrestore(&iosapic->lock, flags);
}
