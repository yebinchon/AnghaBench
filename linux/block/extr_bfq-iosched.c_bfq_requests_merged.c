
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {scalar_t__ fifo_time; int cmd_flags; int queuelist; } ;
struct bfq_queue {struct request* next_rq; } ;


 struct bfq_queue* bfq_init_rq (struct request*) ;
 int bfqg_stats_update_io_merged (int ,int ) ;
 int bfqq_group (struct bfq_queue*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int list_replace_init (int *,int *) ;

__attribute__((used)) static void bfq_requests_merged(struct request_queue *q, struct request *rq,
    struct request *next)
{
 struct bfq_queue *bfqq = bfq_init_rq(rq),
  *next_bfqq = bfq_init_rq(next);

 if (!bfqq)
  return;
 if (bfqq == next_bfqq &&
     !list_empty(&rq->queuelist) && !list_empty(&next->queuelist) &&
     next->fifo_time < rq->fifo_time) {
  list_del_init(&rq->queuelist);
  list_replace_init(&next->queuelist, &rq->queuelist);
  rq->fifo_time = next->fifo_time;
 }

 if (bfqq->next_rq == next)
  bfqq->next_rq = rq;

 bfqg_stats_update_io_merged(bfqq_group(bfqq), next->cmd_flags);
}
