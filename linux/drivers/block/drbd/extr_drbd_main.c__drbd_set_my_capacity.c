
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_device {TYPE_2__* this_bdev; int vdisk; } ;
typedef scalar_t__ sector_t ;
typedef int loff_t ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {int i_size; } ;


 int set_capacity (int ,scalar_t__) ;

__attribute__((used)) static void _drbd_set_my_capacity(struct drbd_device *device, sector_t size)
{

 set_capacity(device->vdisk, size);
 device->this_bdev->bd_inode->i_size = (loff_t)size << 9;
}
