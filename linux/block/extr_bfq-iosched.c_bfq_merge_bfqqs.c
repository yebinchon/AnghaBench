
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prio_changed; } ;
struct bfq_queue {int pid; int wr_coeff; int * bic; TYPE_1__ entity; int wr_start_at_switch_to_srt; int last_wr_start_finish; int wr_cur_max_time; } ;
struct bfq_io_cq {int dummy; } ;
struct bfq_data {unsigned long wr_busy_queues; } ;


 scalar_t__ bfq_bfqq_IO_bound (struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_busy (struct bfq_queue*) ;
 int bfq_bfqq_save_state (struct bfq_queue*) ;
 int bfq_clear_bfqq_IO_bound (struct bfq_queue*) ;
 int bfq_log_bfqq (struct bfq_data*,struct bfq_queue*,char*,unsigned long) ;
 int bfq_mark_bfqq_IO_bound (struct bfq_queue*) ;
 int bfq_mark_bfqq_coop (struct bfq_queue*) ;
 int bfq_put_queue (struct bfq_queue*) ;
 int bic_set_bfqq (struct bfq_io_cq*,struct bfq_queue*,int) ;

__attribute__((used)) static void
bfq_merge_bfqqs(struct bfq_data *bfqd, struct bfq_io_cq *bic,
  struct bfq_queue *bfqq, struct bfq_queue *new_bfqq)
{
 bfq_log_bfqq(bfqd, bfqq, "merging with queue %lu",
  (unsigned long)new_bfqq->pid);

 bfq_bfqq_save_state(bfqq);
 bfq_bfqq_save_state(new_bfqq);
 if (bfq_bfqq_IO_bound(bfqq))
  bfq_mark_bfqq_IO_bound(new_bfqq);
 bfq_clear_bfqq_IO_bound(bfqq);
 if (new_bfqq->wr_coeff == 1 && bfqq->wr_coeff > 1) {
  new_bfqq->wr_coeff = bfqq->wr_coeff;
  new_bfqq->wr_cur_max_time = bfqq->wr_cur_max_time;
  new_bfqq->last_wr_start_finish = bfqq->last_wr_start_finish;
  new_bfqq->wr_start_at_switch_to_srt =
   bfqq->wr_start_at_switch_to_srt;
  if (bfq_bfqq_busy(new_bfqq))
   bfqd->wr_busy_queues++;
  new_bfqq->entity.prio_changed = 1;
 }

 if (bfqq->wr_coeff > 1) {
  bfqq->wr_coeff = 1;
  bfqq->entity.prio_changed = 1;
  if (bfq_bfqq_busy(bfqq))
   bfqd->wr_busy_queues--;
 }

 bfq_log_bfqq(bfqd, new_bfqq, "merge_bfqqs: wr_busy %d",
       bfqd->wr_busy_queues);




 bic_set_bfqq(bic, new_bfqq, 1);
 bfq_mark_bfqq_coop(new_bfqq);
 new_bfqq->bic = ((void*)0);
 new_bfqq->pid = -1;
 bfqq->bic = ((void*)0);

 bfq_put_queue(bfqq);
}
