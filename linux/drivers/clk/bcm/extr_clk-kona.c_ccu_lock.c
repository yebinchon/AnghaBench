
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_data {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static inline unsigned long ccu_lock(struct ccu_data *ccu)
{
 unsigned long flags;

 spin_lock_irqsave(&ccu->lock, flags);

 return flags;
}
