
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xive_irq_bitmap {int base; int count; int list; void* bitmap; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct xive_irq_bitmap*) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_info (char*,int,int) ;
 int spin_lock_init (int *) ;
 int xive_irq_bitmaps ;

__attribute__((used)) static int xive_irq_bitmap_add(int base, int count)
{
 struct xive_irq_bitmap *xibm;

 xibm = kzalloc(sizeof(*xibm), GFP_KERNEL);
 if (!xibm)
  return -ENOMEM;

 spin_lock_init(&xibm->lock);
 xibm->base = base;
 xibm->count = count;
 xibm->bitmap = kzalloc(xibm->count, GFP_KERNEL);
 if (!xibm->bitmap) {
  kfree(xibm);
  return -ENOMEM;
 }
 list_add(&xibm->list, &xive_irq_bitmaps);

 pr_info("Using IRQ range [%x-%x]", xibm->base,
  xibm->base + xibm->count - 1);
 return 0;
}
