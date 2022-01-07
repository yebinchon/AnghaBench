
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int dummy; } ;
struct block_device {scalar_t__ bd_invalidated; } ;
struct TYPE_2__ {int kobj; } ;


 int KOBJ_CHANGE ;
 int check_disk_size_change (struct gendisk*,struct block_device*,int) ;
 TYPE_1__* disk_to_dev (struct gendisk*) ;
 int drop_partitions (struct gendisk*,struct block_device*) ;
 int kobject_uevent (int *,int ) ;
 int set_capacity (struct gendisk*,int ) ;

int invalidate_partitions(struct gendisk *disk, struct block_device *bdev)
{
 int res;

 if (!bdev->bd_invalidated)
  return 0;

 res = drop_partitions(disk, bdev);
 if (res)
  return res;

 set_capacity(disk, 0);
 check_disk_size_change(disk, bdev, 0);
 bdev->bd_invalidated = 0;

 kobject_uevent(&disk_to_dev(disk)->kobj, KOBJ_CHANGE);

 return 0;
}
