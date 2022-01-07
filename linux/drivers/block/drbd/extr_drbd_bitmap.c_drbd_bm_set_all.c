
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {int bm_lock; int bm_bits; int bm_set; int bm_words; struct drbd_bitmap* bm_pages; } ;


 int bm_clear_surplus (struct drbd_bitmap*) ;
 int bm_memset (struct drbd_bitmap*,int ,int,int ) ;
 int expect (struct drbd_bitmap*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void drbd_bm_set_all(struct drbd_device *device)
{
 struct drbd_bitmap *b = device->bitmap;
 if (!expect(b))
  return;
 if (!expect(b->bm_pages))
  return;

 spin_lock_irq(&b->bm_lock);
 bm_memset(b, 0, 0xff, b->bm_words);
 (void)bm_clear_surplus(b);
 b->bm_set = b->bm_bits;
 spin_unlock_irq(&b->bm_lock);
}
