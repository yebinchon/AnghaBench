
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_disk; int bd_part; } ;
typedef scalar_t__ sector_t ;


 int bdev_get_queue (struct block_device*) ;
 int blk_queue_zone_resetall (int ) ;
 scalar_t__ get_capacity (int ) ;
 scalar_t__ get_start_sect (struct block_device*) ;
 scalar_t__ part_nr_sects_read (int ) ;

__attribute__((used)) static inline bool blkdev_allow_reset_all_zones(struct block_device *bdev,
      sector_t nr_sectors)
{
 if (!blk_queue_zone_resetall(bdev_get_queue(bdev)))
  return 0;

 if (nr_sectors != part_nr_sects_read(bdev->bd_part))
  return 0;





 return get_start_sect(bdev) == 0 &&
        part_nr_sects_read(bdev->bd_part) == get_capacity(bdev->bd_disk);
}
