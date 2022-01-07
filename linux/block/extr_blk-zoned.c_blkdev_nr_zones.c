
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct block_device {TYPE_1__* bd_part; } ;
struct TYPE_2__ {int nr_sects; } ;


 unsigned int __blkdev_nr_zones (struct request_queue*,int ) ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 int blk_queue_is_zoned (struct request_queue*) ;

unsigned int blkdev_nr_zones(struct block_device *bdev)
{
 struct request_queue *q = bdev_get_queue(bdev);

 if (!blk_queue_is_zoned(q))
  return 0;

 return __blkdev_nr_zones(q, bdev->bd_part->nr_sects);
}
