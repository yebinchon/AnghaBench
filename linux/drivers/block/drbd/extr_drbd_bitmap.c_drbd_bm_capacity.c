
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_device {TYPE_1__* bitmap; } ;
typedef int sector_t ;
struct TYPE_2__ {int bm_dev_capacity; } ;


 int expect (TYPE_1__*) ;

sector_t drbd_bm_capacity(struct drbd_device *device)
{
 if (!expect(device->bitmap))
  return 0;
 return device->bitmap->bm_dev_capacity;
}
