
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {struct bio* bio; } ;
struct TYPE_3__ {int bi_size; } ;
struct bio {int bi_status; TYPE_1__ bi_iter; } ;
struct TYPE_4__ {struct request* rq; } ;
struct aoedev {TYPE_2__ ip; struct request_queue* blkq; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int __blk_mq_end_request (struct request*,int ) ;
 int blk_mq_run_hw_queues (struct request_queue*,int) ;
 scalar_t__ blk_update_request (struct request*,int ,int ) ;

void
aoe_end_request(struct aoedev *d, struct request *rq, int fastfail)
{
 struct bio *bio;
 int bok;
 struct request_queue *q;
 blk_status_t err = BLK_STS_OK;

 q = d->blkq;
 if (rq == d->ip.rq)
  d->ip.rq = ((void*)0);
 do {
  bio = rq->bio;
  bok = !fastfail && !bio->bi_status;
  if (!bok)
   err = BLK_STS_IOERR;
 } while (blk_update_request(rq, bok ? BLK_STS_OK : BLK_STS_IOERR, bio->bi_iter.bi_size));

 __blk_mq_end_request(rq, err);


 if (!fastfail)
  blk_mq_run_hw_queues(q, 1);
}
