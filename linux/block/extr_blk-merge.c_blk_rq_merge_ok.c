
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {scalar_t__ rq_disk; scalar_t__ write_hint; scalar_t__ ioprio; int bio; int q; } ;
struct bio {scalar_t__ bi_disk; scalar_t__ bi_write_hint; } ;


 scalar_t__ REQ_OP_WRITE_SAME ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_mergeable (struct bio*) ;
 scalar_t__ bio_op (struct bio*) ;
 scalar_t__ bio_prio (struct bio*) ;
 int blk_integrity_merge_bio (int ,struct request*,struct bio*) ;
 int blk_write_same_mergeable (int ,struct bio*) ;
 scalar_t__ req_op (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int rq_mergeable (struct request*) ;

bool blk_rq_merge_ok(struct request *rq, struct bio *bio)
{
 if (!rq_mergeable(rq) || !bio_mergeable(bio))
  return 0;

 if (req_op(rq) != bio_op(bio))
  return 0;


 if (bio_data_dir(bio) != rq_data_dir(rq))
  return 0;


 if (rq->rq_disk != bio->bi_disk)
  return 0;


 if (blk_integrity_merge_bio(rq->q, rq, bio) == 0)
  return 0;


 if (req_op(rq) == REQ_OP_WRITE_SAME &&
     !blk_write_same_mergeable(rq->bio, bio))
  return 0;





 if (rq->write_hint != bio->bi_write_hint)
  return 0;

 if (rq->ioprio != bio_prio(bio))
  return 0;

 return 1;
}
