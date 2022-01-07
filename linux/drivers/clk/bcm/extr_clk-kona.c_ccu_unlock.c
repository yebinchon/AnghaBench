
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_data {int lock; } ;


 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void ccu_unlock(struct ccu_data *ccu, unsigned long flags)
{
 spin_unlock_irqrestore(&ccu->lock, flags);
}
