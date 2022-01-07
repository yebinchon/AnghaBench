
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct block_device {int dummy; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;
typedef int sector_t ;
typedef int gfp_t ;


 int __blkdev_issue_write_same (struct block_device*,int ,int ,int ,struct page*,struct bio**) ;
 int bio_put (struct bio*) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int submit_bio_wait (struct bio*) ;

int blkdev_issue_write_same(struct block_device *bdev, sector_t sector,
    sector_t nr_sects, gfp_t gfp_mask,
    struct page *page)
{
 struct bio *bio = ((void*)0);
 struct blk_plug plug;
 int ret;

 blk_start_plug(&plug);
 ret = __blkdev_issue_write_same(bdev, sector, nr_sects, gfp_mask, page,
   &bio);
 if (ret == 0 && bio) {
  ret = submit_bio_wait(bio);
  bio_put(bio);
 }
 blk_finish_plug(&plug);
 return ret;
}
