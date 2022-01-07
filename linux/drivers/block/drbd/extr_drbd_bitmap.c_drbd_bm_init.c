
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {int bm_io_wait; int bm_change; int bm_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int ) ;
 int init_waitqueue_head (int *) ;
 struct drbd_bitmap* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

int drbd_bm_init(struct drbd_device *device)
{
 struct drbd_bitmap *b = device->bitmap;
 WARN_ON(b != ((void*)0));
 b = kzalloc(sizeof(struct drbd_bitmap), GFP_KERNEL);
 if (!b)
  return -ENOMEM;
 spin_lock_init(&b->bm_lock);
 mutex_init(&b->bm_change);
 init_waitqueue_head(&b->bm_io_wait);

 device->bitmap = b;

 return 0;
}
