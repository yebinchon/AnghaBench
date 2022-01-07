
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {unsigned long bm_set; int bm_lock; struct drbd_bitmap* bm_pages; } ;


 int expect (struct drbd_bitmap*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned long _drbd_bm_total_weight(struct drbd_device *device)
{
 struct drbd_bitmap *b = device->bitmap;
 unsigned long s;
 unsigned long flags;

 if (!expect(b))
  return 0;
 if (!expect(b->bm_pages))
  return 0;

 spin_lock_irqsave(&b->bm_lock, flags);
 s = b->bm_set;
 spin_unlock_irqrestore(&b->bm_lock, flags);

 return s;
}
