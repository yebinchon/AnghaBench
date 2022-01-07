
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_device {TYPE_1__* bitmap; } ;
struct TYPE_3__ {int bm_pages; int bm_number_of_pages; } ;


 int bm_free_pages (int ,int ) ;
 int bm_vk_free (int ) ;
 int expect (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;

void drbd_bm_cleanup(struct drbd_device *device)
{
 if (!expect(device->bitmap))
  return;
 bm_free_pages(device->bitmap->bm_pages, device->bitmap->bm_number_of_pages);
 bm_vk_free(device->bitmap->bm_pages);
 kfree(device->bitmap);
 device->bitmap = ((void*)0);
}
