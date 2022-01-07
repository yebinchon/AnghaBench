
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {struct drbd_bitmap* bitmap; } ;
struct drbd_bitmap {size_t bm_words; struct drbd_bitmap* bm_pages; } ;


 int expect (struct drbd_bitmap*) ;

size_t drbd_bm_words(struct drbd_device *device)
{
 struct drbd_bitmap *b = device->bitmap;
 if (!expect(b))
  return 0;
 if (!expect(b->bm_pages))
  return 0;

 return b->bm_words;
}
