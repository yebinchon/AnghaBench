
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_bitmap {int lock; int bitmap; } ;


 int bitmap_allocate_region (int ,unsigned int,int ) ;
 int pr_debug (char*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void msi_bitmap_reserve_hwirq(struct msi_bitmap *bmp, unsigned int hwirq)
{
 unsigned long flags;

 pr_debug("msi_bitmap: reserving hwirq 0x%x\n", hwirq);

 spin_lock_irqsave(&bmp->lock, flags);
 bitmap_allocate_region(bmp->bitmap, hwirq, 0);
 spin_unlock_irqrestore(&bmp->lock, flags);
}
