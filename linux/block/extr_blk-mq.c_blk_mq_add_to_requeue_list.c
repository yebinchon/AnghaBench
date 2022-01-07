
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int requeue_lock; int requeue_list; } ;
struct request {int rq_flags; int queuelist; struct request_queue* q; } ;


 int BUG_ON (int) ;
 int RQF_SOFTBARRIER ;
 int blk_mq_kick_requeue_list (struct request_queue*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void blk_mq_add_to_requeue_list(struct request *rq, bool at_head,
    bool kick_requeue_list)
{
 struct request_queue *q = rq->q;
 unsigned long flags;





 BUG_ON(rq->rq_flags & RQF_SOFTBARRIER);

 spin_lock_irqsave(&q->requeue_lock, flags);
 if (at_head) {
  rq->rq_flags |= RQF_SOFTBARRIER;
  list_add(&rq->queuelist, &q->requeue_list);
 } else {
  list_add_tail(&rq->queuelist, &q->requeue_list);
 }
 spin_unlock_irqrestore(&q->requeue_lock, flags);

 if (kick_requeue_list)
  blk_mq_kick_requeue_list(q);
}
