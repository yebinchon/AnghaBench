
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int make_request_fn; } ;
struct block_device {int * bd_disk; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
typedef int sector_t ;
typedef int gfp_t ;


 int ENXIO ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 int submit_bio_wait (struct bio*) ;

int blkdev_issue_flush(struct block_device *bdev, gfp_t gfp_mask,
  sector_t *error_sector)
{
 struct request_queue *q;
 struct bio *bio;
 int ret = 0;

 if (bdev->bd_disk == ((void*)0))
  return -ENXIO;

 q = bdev_get_queue(bdev);
 if (!q)
  return -ENXIO;







 if (!q->make_request_fn)
  return -ENXIO;

 bio = bio_alloc(gfp_mask, 0);
 bio_set_dev(bio, bdev);
 bio->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;

 ret = submit_bio_wait(bio);






 if (error_sector)
  *error_sector = bio->bi_iter.bi_sector;

 bio_put(bio);
 return ret;
}
