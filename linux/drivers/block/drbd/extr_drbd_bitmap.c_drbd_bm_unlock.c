
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {int bm_flags; int bm_change; int * bm_task; int * bm_why; } ;


 int BM_LOCKED_MASK ;
 int drbd_err (struct drbd_device*,char*) ;
 int mutex_unlock (int *) ;

void drbd_bm_unlock(struct drbd_device *device)
{
 struct drbd_bitmap *b = device->bitmap;
 if (!b) {
  drbd_err(device, "FIXME no bitmap in drbd_bm_unlock!?\n");
  return;
 }

 if (!(BM_LOCKED_MASK & device->bitmap->bm_flags))
  drbd_err(device, "FIXME bitmap not locked in bm_unlock\n");

 b->bm_flags &= ~BM_LOCKED_MASK;
 b->bm_why = ((void*)0);
 b->bm_task = ((void*)0);
 mutex_unlock(&b->bm_change);
}
