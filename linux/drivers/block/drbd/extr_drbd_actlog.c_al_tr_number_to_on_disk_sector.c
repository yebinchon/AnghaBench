
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_device {unsigned int al_tr_number; TYPE_1__* ldev; } ;
typedef scalar_t__ sector_t ;
struct TYPE_4__ {unsigned int al_stripes; unsigned int al_stripe_size_4k; unsigned int al_size_4k; scalar_t__ al_offset; scalar_t__ md_offset; } ;
struct TYPE_3__ {TYPE_2__ md; } ;



__attribute__((used)) static sector_t al_tr_number_to_on_disk_sector(struct drbd_device *device)
{
 const unsigned int stripes = device->ldev->md.al_stripes;
 const unsigned int stripe_size_4kB = device->ldev->md.al_stripe_size_4k;


 unsigned int t = device->al_tr_number % (device->ldev->md.al_size_4k);


 t = ((t % stripes) * stripe_size_4kB) + t/stripes;


 t *= 8;


 return device->ldev->md.md_offset + device->ldev->md.al_offset + t;
}
