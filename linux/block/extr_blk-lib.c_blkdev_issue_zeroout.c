
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;
typedef int sector_t ;
typedef int gfp_t ;


 unsigned int BLKDEV_ZERO_NOFALLBACK ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int __blkdev_issue_write_zeroes (struct block_device*,int,int,int ,struct bio**,unsigned int) ;
 int __blkdev_issue_zero_pages (struct block_device*,int,int,int ,struct bio**) ;
 int bdev_logical_block_size (struct block_device*) ;
 int bdev_write_zeroes_sectors (struct block_device*) ;
 int bio_put (struct bio*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int submit_bio_wait (struct bio*) ;

int blkdev_issue_zeroout(struct block_device *bdev, sector_t sector,
  sector_t nr_sects, gfp_t gfp_mask, unsigned flags)
{
 int ret = 0;
 sector_t bs_mask;
 struct bio *bio;
 struct blk_plug plug;
 bool try_write_zeroes = !!bdev_write_zeroes_sectors(bdev);

 bs_mask = (bdev_logical_block_size(bdev) >> 9) - 1;
 if ((sector | nr_sects) & bs_mask)
  return -EINVAL;

retry:
 bio = ((void*)0);
 blk_start_plug(&plug);
 if (try_write_zeroes) {
  ret = __blkdev_issue_write_zeroes(bdev, sector, nr_sects,
        gfp_mask, &bio, flags);
 } else if (!(flags & BLKDEV_ZERO_NOFALLBACK)) {
  ret = __blkdev_issue_zero_pages(bdev, sector, nr_sects,
      gfp_mask, &bio);
 } else {

  ret = -EOPNOTSUPP;
 }
 if (ret == 0 && bio) {
  ret = submit_bio_wait(bio);
  bio_put(bio);
 }
 blk_finish_plug(&plug);
 if (ret && try_write_zeroes) {
  if (!(flags & BLKDEV_ZERO_NOFALLBACK)) {
   try_write_zeroes = 0;
   goto retry;
  }
  if (!bdev_write_zeroes_sectors(bdev)) {






   ret = -EOPNOTSUPP;
  }
 }

 return ret;
}
