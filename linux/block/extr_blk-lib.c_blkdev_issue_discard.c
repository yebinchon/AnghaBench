
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;
typedef int sector_t ;
typedef int gfp_t ;


 int EOPNOTSUPP ;
 int __blkdev_issue_discard (struct block_device*,int ,int ,int ,unsigned long,struct bio**) ;
 int bio_put (struct bio*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int submit_bio_wait (struct bio*) ;

int blkdev_issue_discard(struct block_device *bdev, sector_t sector,
  sector_t nr_sects, gfp_t gfp_mask, unsigned long flags)
{
 struct bio *bio = ((void*)0);
 struct blk_plug plug;
 int ret;

 blk_start_plug(&plug);
 ret = __blkdev_issue_discard(bdev, sector, nr_sects, gfp_mask, flags,
   &bio);
 if (!ret && bio) {
  ret = submit_bio_wait(bio);
  if (ret == -EOPNOTSUPP)
   ret = 0;
  bio_put(bio);
 }
 blk_finish_plug(&plug);

 return ret;
}
