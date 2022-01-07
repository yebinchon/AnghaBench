
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct block_device {int bd_mutex; struct block_device* bd_contains; struct gendisk* bd_disk; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EINVAL ;
 int capable (int ) ;
 int disk_part_scan_enabled (struct gendisk*) ;
 int lockdep_assert_held (int *) ;
 int rescan_partitions (struct gendisk*,struct block_device*) ;

int __blkdev_reread_part(struct block_device *bdev)
{
 struct gendisk *disk = bdev->bd_disk;

 if (!disk_part_scan_enabled(disk) || bdev != bdev->bd_contains)
  return -EINVAL;
 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 lockdep_assert_held(&bdev->bd_mutex);

 return rescan_partitions(disk, bdev);
}
