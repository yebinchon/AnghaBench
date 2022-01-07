
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {unsigned long bm_bits; } ;


 int expect (struct drbd_bitmap*) ;

unsigned long drbd_bm_bits(struct drbd_device *device)
{
 struct drbd_bitmap *b = device->bitmap;
 if (!expect(b))
  return 0;

 return b->bm_bits;
}
