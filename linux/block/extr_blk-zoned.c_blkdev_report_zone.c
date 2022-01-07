
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_part; } ;
struct blk_zone {scalar_t__ start; scalar_t__ len; scalar_t__ type; scalar_t__ wp; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ nr_sects; } ;


 scalar_t__ BLK_ZONE_TYPE_CONVENTIONAL ;
 scalar_t__ get_start_sect (struct block_device*) ;

__attribute__((used)) static bool blkdev_report_zone(struct block_device *bdev, struct blk_zone *rep)
{
 sector_t offset = get_start_sect(bdev);

 if (rep->start < offset)
  return 0;

 rep->start -= offset;
 if (rep->start + rep->len > bdev->bd_part->nr_sects)
  return 0;

 if (rep->type == BLK_ZONE_TYPE_CONVENTIONAL)
  rep->wp = rep->start + rep->len;
 else
  rep->wp -= offset;
 return 1;
}
