
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct bfq_queue** priv; } ;
struct request {int queuelist; scalar_t__ fifo_time; TYPE_1__ elv; } ;
struct bfq_queue {int fifo; int ref; int allocated; } ;
struct bfq_data {scalar_t__* bfq_fifo_expire; } ;


 struct bfq_queue* RQ_BFQQ (struct request*) ;
 int RQ_BIC (struct request*) ;
 int bfq_add_request (struct request*) ;
 scalar_t__ bfq_bfqq_wait_request (struct bfq_queue*) ;
 int bfq_clear_bfqq_just_created (struct bfq_queue*) ;
 int bfq_merge_bfqqs (struct bfq_data*,int ,struct bfq_queue*,struct bfq_queue*) ;
 int bfq_put_queue (struct bfq_queue*) ;
 int bfq_rq_enqueued (struct bfq_data*,struct bfq_queue*,struct request*) ;
 struct bfq_queue* bfq_setup_cooperator (struct bfq_data*,struct bfq_queue*,struct request*,int) ;
 int bfq_update_has_short_ttime (struct bfq_data*,struct bfq_queue*,int ) ;
 int bfq_update_io_seektime (struct bfq_data*,struct bfq_queue*,struct request*) ;
 int bfq_update_io_thinktime (struct bfq_data*,struct bfq_queue*) ;
 struct bfq_queue* bic_to_bfqq (int ,int) ;
 scalar_t__ ktime_get_ns () ;
 int list_add_tail (int *,int *) ;
 size_t rq_is_sync (struct request*) ;

__attribute__((used)) static bool __bfq_insert_request(struct bfq_data *bfqd, struct request *rq)
{
 struct bfq_queue *bfqq = RQ_BFQQ(rq),
  *new_bfqq = bfq_setup_cooperator(bfqd, bfqq, rq, 1);
 bool waiting, idle_timer_disabled = 0;

 if (new_bfqq) {




  new_bfqq->allocated++;
  bfqq->allocated--;
  new_bfqq->ref++;
  if (bic_to_bfqq(RQ_BIC(rq), 1) == bfqq)
   bfq_merge_bfqqs(bfqd, RQ_BIC(rq),
     bfqq, new_bfqq);

  bfq_clear_bfqq_just_created(bfqq);




  bfq_put_queue(bfqq);
  rq->elv.priv[1] = new_bfqq;
  bfqq = new_bfqq;
 }

 bfq_update_io_thinktime(bfqd, bfqq);
 bfq_update_has_short_ttime(bfqd, bfqq, RQ_BIC(rq));
 bfq_update_io_seektime(bfqd, bfqq, rq);

 waiting = bfqq && bfq_bfqq_wait_request(bfqq);
 bfq_add_request(rq);
 idle_timer_disabled = waiting && !bfq_bfqq_wait_request(bfqq);

 rq->fifo_time = ktime_get_ns() + bfqd->bfq_fifo_expire[rq_is_sync(rq)];
 list_add_tail(&rq->queuelist, &bfqq->fifo);

 bfq_rq_enqueued(bfqd, bfqq, rq);

 return idle_timer_disabled;
}
