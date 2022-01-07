
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base_virt; int lock; int rh; } ;


 int BUG_ON (int) ;
 TYPE_1__* cache_sram ;
 int rh_free (int ,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mpc85xx_cache_sram_free(void *ptr)
{
 unsigned long flags;
 BUG_ON(!ptr);

 spin_lock_irqsave(&cache_sram->lock, flags);
 rh_free(cache_sram->rh, ptr - cache_sram->base_virt);
 spin_unlock_irqrestore(&cache_sram->lock, flags);
}
