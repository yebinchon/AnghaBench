
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {int partno; } ;
struct gendisk {int dummy; } ;
struct disk_part_iter {int dummy; } ;
struct block_device {scalar_t__ bd_super; scalar_t__ bd_part_count; } ;


 int DISK_PITER_INCL_EMPTY ;
 int EBUSY ;
 int delete_partition (struct gendisk*,int ) ;
 int disk_part_iter_exit (struct disk_part_iter*) ;
 int disk_part_iter_init (struct disk_part_iter*,struct gendisk*,int ) ;
 struct hd_struct* disk_part_iter_next (struct disk_part_iter*) ;
 int invalidate_partition (struct gendisk*,int ) ;

__attribute__((used)) static int drop_partitions(struct gendisk *disk, struct block_device *bdev)
{
 struct disk_part_iter piter;
 struct hd_struct *part;
 int res;

 if (bdev->bd_part_count || bdev->bd_super)
  return -EBUSY;
 res = invalidate_partition(disk, 0);
 if (res)
  return res;

 disk_part_iter_init(&piter, disk, DISK_PITER_INCL_EMPTY);
 while ((part = disk_part_iter_next(&piter)))
  delete_partition(disk, part->partno);
 disk_part_iter_exit(&piter);

 return 0;
}
