
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;
typedef int gfp_t ;


 int ENXIO ;
 int EPERM ;
 scalar_t__ PAGE_SIZE ;
 int REQ_OP_WRITE ;
 int ZERO_PAGE (int ) ;
 int __blkdev_sectors_to_bio_pages (int) ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 scalar_t__ bdev_read_only (struct block_device*) ;
 int bio_add_page (struct bio*,int ,unsigned int,int ) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 struct bio* blk_next_bio (struct bio*,int ,int ) ;
 int cond_resched () ;
 unsigned int min (int,int) ;

__attribute__((used)) static int __blkdev_issue_zero_pages(struct block_device *bdev,
  sector_t sector, sector_t nr_sects, gfp_t gfp_mask,
  struct bio **biop)
{
 struct request_queue *q = bdev_get_queue(bdev);
 struct bio *bio = *biop;
 int bi_size = 0;
 unsigned int sz;

 if (!q)
  return -ENXIO;

 if (bdev_read_only(bdev))
  return -EPERM;

 while (nr_sects != 0) {
  bio = blk_next_bio(bio, __blkdev_sectors_to_bio_pages(nr_sects),
       gfp_mask);
  bio->bi_iter.bi_sector = sector;
  bio_set_dev(bio, bdev);
  bio_set_op_attrs(bio, REQ_OP_WRITE, 0);

  while (nr_sects != 0) {
   sz = min((sector_t) PAGE_SIZE, nr_sects << 9);
   bi_size = bio_add_page(bio, ZERO_PAGE(0), sz, 0);
   nr_sects -= bi_size >> 9;
   sector += bi_size >> 9;
   if (bi_size < sz)
    break;
  }
  cond_resched();
 }

 *biop = bio;
 return 0;
}
