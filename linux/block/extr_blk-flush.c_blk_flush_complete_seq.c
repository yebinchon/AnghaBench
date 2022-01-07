
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_2__ {unsigned int seq; int list; } ;
struct list_head {int dummy; } ;
struct request {unsigned int cmd_flags; TYPE_1__ flush; struct list_head queuelist; struct request_queue* q; } ;
struct blk_flush_queue {size_t flush_pending_idx; struct list_head flush_data_in_flight; int flush_pending_since; struct list_head* flush_queue; } ;
typedef int blk_status_t ;


 int BUG () ;
 int BUG_ON (int) ;




 unsigned int blk_flush_cur_seq (struct request*) ;
 int blk_flush_queue_rq (struct request*,int) ;
 int blk_flush_restore_request (struct request*) ;
 int blk_kick_flush (struct request_queue*,struct blk_flush_queue*,unsigned int) ;
 int blk_mq_end_request (struct request*,int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int list_empty (struct list_head*) ;
 int list_move_tail (int *,struct list_head*) ;

__attribute__((used)) static void blk_flush_complete_seq(struct request *rq,
       struct blk_flush_queue *fq,
       unsigned int seq, blk_status_t error)
{
 struct request_queue *q = rq->q;
 struct list_head *pending = &fq->flush_queue[fq->flush_pending_idx];
 unsigned int cmd_flags;

 BUG_ON(rq->flush.seq & seq);
 rq->flush.seq |= seq;
 cmd_flags = rq->cmd_flags;

 if (likely(!error))
  seq = blk_flush_cur_seq(rq);
 else
  seq = 130;

 switch (seq) {
 case 128:
 case 129:

  if (list_empty(pending))
   fq->flush_pending_since = jiffies;
  list_move_tail(&rq->flush.list, pending);
  break;

 case 131:
  list_move_tail(&rq->flush.list, &fq->flush_data_in_flight);
  blk_flush_queue_rq(rq, 1);
  break;

 case 130:






  BUG_ON(!list_empty(&rq->queuelist));
  list_del_init(&rq->flush.list);
  blk_flush_restore_request(rq);
  blk_mq_end_request(rq, error);
  break;

 default:
  BUG();
 }

 blk_kick_flush(q, fq, cmd_flags);
}
