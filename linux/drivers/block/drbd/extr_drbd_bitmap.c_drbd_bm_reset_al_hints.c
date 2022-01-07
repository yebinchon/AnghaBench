
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drbd_device {TYPE_1__* bitmap; } ;
struct TYPE_2__ {scalar_t__ n_bitmap_hints; } ;



void drbd_bm_reset_al_hints(struct drbd_device *device)
{
 device->bitmap->n_bitmap_hints = 0;
}
