
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int bi_sector; unsigned int bi_size; } ;
struct bio {TYPE_1__ bi_iter; int bi_opf; } ;
typedef int sector_t ;
typedef int gfp_t ;


 unsigned int BLKDEV_ZERO_NOUNMAP ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int EPERM ;
 int REQ_NOUNMAP ;
 int REQ_OP_WRITE_ZEROES ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 scalar_t__ bdev_read_only (struct block_device*) ;
 unsigned int bdev_write_zeroes_sectors (struct block_device*) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 struct bio* blk_next_bio (struct bio*,int ,int ) ;
 int cond_resched () ;

__attribute__((used)) static int __blkdev_issue_write_zeroes(struct block_device *bdev,
  sector_t sector, sector_t nr_sects, gfp_t gfp_mask,
  struct bio **biop, unsigned flags)
{
 struct bio *bio = *biop;
 unsigned int max_write_zeroes_sectors;
 struct request_queue *q = bdev_get_queue(bdev);

 if (!q)
  return -ENXIO;

 if (bdev_read_only(bdev))
  return -EPERM;


 max_write_zeroes_sectors = bdev_write_zeroes_sectors(bdev);

 if (max_write_zeroes_sectors == 0)
  return -EOPNOTSUPP;

 while (nr_sects) {
  bio = blk_next_bio(bio, 0, gfp_mask);
  bio->bi_iter.bi_sector = sector;
  bio_set_dev(bio, bdev);
  bio->bi_opf = REQ_OP_WRITE_ZEROES;
  if (flags & BLKDEV_ZERO_NOUNMAP)
   bio->bi_opf |= REQ_NOUNMAP;

  if (nr_sects > max_write_zeroes_sectors) {
   bio->bi_iter.bi_size = max_write_zeroes_sectors << 9;
   nr_sects -= max_write_zeroes_sectors;
   sector += max_write_zeroes_sectors;
  } else {
   bio->bi_iter.bi_size = nr_sects << 9;
   nr_sects = 0;
  }
  cond_resched();
 }

 *biop = bio;
 return 0;
}
