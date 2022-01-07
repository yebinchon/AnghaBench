
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int invalid_io; } ;
struct zram {TYPE_2__ stats; } ;
struct request_queue {struct zram* queuedata; } ;
struct TYPE_3__ {int bi_size; int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int blk_qc_t ;


 int BLK_QC_T_NONE ;
 int __zram_make_request (struct zram*,struct bio*) ;
 int atomic64_inc (int *) ;
 int bio_io_error (struct bio*) ;
 int valid_io_request (struct zram*,int ,int ) ;

__attribute__((used)) static blk_qc_t zram_make_request(struct request_queue *queue, struct bio *bio)
{
 struct zram *zram = queue->queuedata;

 if (!valid_io_request(zram, bio->bi_iter.bi_sector,
     bio->bi_iter.bi_size)) {
  atomic64_inc(&zram->stats.invalid_io);
  goto error;
 }

 __zram_make_request(zram, bio);
 return BLK_QC_T_NONE;

error:
 bio_io_error(bio);
 return BLK_QC_T_NONE;
}
