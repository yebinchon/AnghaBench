
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int (* make_request_fn ) (struct request_queue*,struct bio*) ;} ;
struct bio {int bi_opf; int bi_status; TYPE_1__* bi_disk; } ;
typedef int blk_qc_t ;
struct TYPE_2__ {struct request_queue* queue; } ;


 int BLK_MQ_REQ_NOWAIT ;
 int BLK_QC_T_NONE ;
 int BLK_STS_AGAIN ;
 int BLK_STS_IOERR ;
 int REQ_NOWAIT ;
 int bio_endio (struct bio*) ;
 int blk_queue_dying (struct request_queue*) ;
 int blk_queue_enter (struct request_queue*,int ) ;
 int blk_queue_exit (struct request_queue*) ;
 int generic_make_request_checks (struct bio*) ;
 int stub1 (struct request_queue*,struct bio*) ;
 scalar_t__ unlikely (int ) ;

blk_qc_t direct_make_request(struct bio *bio)
{
 struct request_queue *q = bio->bi_disk->queue;
 bool nowait = bio->bi_opf & REQ_NOWAIT;
 blk_qc_t ret;

 if (!generic_make_request_checks(bio))
  return BLK_QC_T_NONE;

 if (unlikely(blk_queue_enter(q, nowait ? BLK_MQ_REQ_NOWAIT : 0))) {
  if (nowait && !blk_queue_dying(q))
   bio->bi_status = BLK_STS_AGAIN;
  else
   bio->bi_status = BLK_STS_IOERR;
  bio_endio(bio);
  return BLK_QC_T_NONE;
 }

 ret = q->make_request_fn(q, bio);
 blk_queue_exit(q);
 return ret;
}
