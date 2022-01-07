
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {unsigned long queue_flags; } ;
struct TYPE_2__ {int saved_end_io; int list; } ;
struct request {scalar_t__ bio; scalar_t__ biotail; int end_io; TYPE_1__ flush; int rq_flags; int cmd_flags; int mq_ctx; struct request_queue* q; } ;
struct blk_flush_queue {int mq_flush_lock; } ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 unsigned long QUEUE_FLAG_FUA ;
 unsigned int REQ_FSEQ_ACTIONS ;
 unsigned int REQ_FSEQ_DATA ;
 unsigned int REQ_FSEQ_POSTFLUSH ;
 unsigned int REQ_FSEQ_PREFLUSH ;
 int REQ_FUA ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int RQF_FLUSH_SEQ ;
 int blk_flush_complete_seq (struct request*,struct blk_flush_queue*,unsigned int,int ) ;
 unsigned int blk_flush_policy (unsigned long,struct request*) ;
 struct blk_flush_queue* blk_get_flush_queue (struct request_queue*,int ) ;
 int blk_mq_end_request (struct request*,int ) ;
 int blk_mq_request_bypass_insert (struct request*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int mq_flush_data_end_io ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void blk_insert_flush(struct request *rq)
{
 struct request_queue *q = rq->q;
 unsigned long fflags = q->queue_flags;
 unsigned int policy = blk_flush_policy(fflags, rq);
 struct blk_flush_queue *fq = blk_get_flush_queue(q, rq->mq_ctx);





 rq->cmd_flags &= ~REQ_PREFLUSH;
 if (!(fflags & (1UL << QUEUE_FLAG_FUA)))
  rq->cmd_flags &= ~REQ_FUA;






 rq->cmd_flags |= REQ_SYNC;







 if (!policy) {
  blk_mq_end_request(rq, 0);
  return;
 }

 BUG_ON(rq->bio != rq->biotail);






 if ((policy & REQ_FSEQ_DATA) &&
     !(policy & (REQ_FSEQ_PREFLUSH | REQ_FSEQ_POSTFLUSH))) {
  blk_mq_request_bypass_insert(rq, 0);
  return;
 }





 memset(&rq->flush, 0, sizeof(rq->flush));
 INIT_LIST_HEAD(&rq->flush.list);
 rq->rq_flags |= RQF_FLUSH_SEQ;
 rq->flush.saved_end_io = rq->end_io;

 rq->end_io = mq_flush_data_end_io;

 spin_lock_irq(&fq->mq_flush_lock);
 blk_flush_complete_seq(rq, fq, REQ_FSEQ_ACTIONS & ~policy, 0);
 spin_unlock_irq(&fq->mq_flush_lock);
}
