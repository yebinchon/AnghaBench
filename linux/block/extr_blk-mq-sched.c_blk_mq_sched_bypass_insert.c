
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int rq_flags; int queuelist; } ;
struct blk_mq_hw_ctx {int lock; int dispatch; } ;


 int RQF_FLUSH_SEQ ;
 int RQF_SORTED ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool blk_mq_sched_bypass_insert(struct blk_mq_hw_ctx *hctx,
           bool has_sched,
           struct request *rq)
{

 if (rq->rq_flags & RQF_FLUSH_SEQ) {
  spin_lock(&hctx->lock);
  list_add(&rq->queuelist, &hctx->dispatch);
  spin_unlock(&hctx->lock);
  return 1;
 }

 if (has_sched)
  rq->rq_flags |= RQF_SORTED;

 return 0;
}
