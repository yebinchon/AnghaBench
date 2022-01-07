
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop_device {scalar_t__ lo_offset; scalar_t__ lo_sizelimit; int lo_disk; struct block_device* lo_device; int lo_backing_file; } ;
struct block_device {int bd_disk; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int kobj; } ;


 int EFBIG ;
 int KOBJ_CHANGE ;
 int bd_set_size (struct block_device*,scalar_t__) ;
 TYPE_1__* disk_to_dev (int ) ;
 scalar_t__ get_capacity (int ) ;
 scalar_t__ get_size (scalar_t__,scalar_t__,int ) ;
 int kobject_uevent (int *,int ) ;
 int set_capacity (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
figure_loop_size(struct loop_device *lo, loff_t offset, loff_t sizelimit)
{
 loff_t size = get_size(offset, sizelimit, lo->lo_backing_file);
 sector_t x = (sector_t)size;
 struct block_device *bdev = lo->lo_device;

 if (unlikely((loff_t)x != size))
  return -EFBIG;
 if (lo->lo_offset != offset)
  lo->lo_offset = offset;
 if (lo->lo_sizelimit != sizelimit)
  lo->lo_sizelimit = sizelimit;
 set_capacity(lo->lo_disk, x);
 bd_set_size(bdev, (loff_t)get_capacity(bdev->bd_disk) << 9);

 kobject_uevent(&disk_to_dev(bdev->bd_disk)->kobj, KOBJ_CHANGE);
 return 0;
}
