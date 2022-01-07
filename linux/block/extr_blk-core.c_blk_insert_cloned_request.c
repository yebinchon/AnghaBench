
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {TYPE_1__* rq_disk; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int part0; } ;


 int BLK_STS_IOERR ;
 int blk_account_io_start (struct request*,int) ;
 scalar_t__ blk_cloned_rq_check_limits (struct request_queue*,struct request*) ;
 int blk_mq_request_issue_directly (struct request*,int) ;
 scalar_t__ blk_queue_io_stat (struct request_queue*) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ should_fail_request (int *,int ) ;

blk_status_t blk_insert_cloned_request(struct request_queue *q, struct request *rq)
{
 if (blk_cloned_rq_check_limits(q, rq))
  return BLK_STS_IOERR;

 if (rq->rq_disk &&
     should_fail_request(&rq->rq_disk->part0, blk_rq_bytes(rq)))
  return BLK_STS_IOERR;

 if (blk_queue_io_stat(q))
  blk_account_io_start(rq, 1);






 return blk_mq_request_issue_directly(rq, 1);
}
