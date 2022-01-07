
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
struct bio {int dummy; } ;
typedef int sector_t ;
typedef int gfp_t ;


 unsigned int BLKDEV_ZERO_NOFALLBACK ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int __blkdev_issue_write_zeroes (struct block_device*,int,int,int ,struct bio**,unsigned int) ;
 int __blkdev_issue_zero_pages (struct block_device*,int,int,int ,struct bio**) ;
 int bdev_logical_block_size (struct block_device*) ;

int __blkdev_issue_zeroout(struct block_device *bdev, sector_t sector,
  sector_t nr_sects, gfp_t gfp_mask, struct bio **biop,
  unsigned flags)
{
 int ret;
 sector_t bs_mask;

 bs_mask = (bdev_logical_block_size(bdev) >> 9) - 1;
 if ((sector | nr_sects) & bs_mask)
  return -EINVAL;

 ret = __blkdev_issue_write_zeroes(bdev, sector, nr_sects, gfp_mask,
   biop, flags);
 if (ret != -EOPNOTSUPP || (flags & BLKDEV_ZERO_NOFALLBACK))
  return ret;

 return __blkdev_issue_zero_pages(bdev, sector, nr_sects, gfp_mask,
      biop);
}
