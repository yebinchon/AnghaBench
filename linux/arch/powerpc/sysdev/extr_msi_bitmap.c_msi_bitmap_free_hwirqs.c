
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_bitmap {int lock; int bitmap; } ;


 int bitmap_clear (int ,unsigned int,unsigned int) ;
 int pr_debug (char*,unsigned int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void msi_bitmap_free_hwirqs(struct msi_bitmap *bmp, unsigned int offset,
       unsigned int num)
{
 unsigned long flags;

 pr_debug("msi_bitmap: freeing 0x%x at offset 0x%x\n",
   num, offset);

 spin_lock_irqsave(&bmp->lock, flags);
 bitmap_clear(bmp->bitmap, offset, num);
 spin_unlock_irqrestore(&bmp->lock, flags);
}
