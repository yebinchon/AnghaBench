
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ last_end_request; } ;
struct TYPE_3__ {int rb_node; } ;
struct bfq_queue {int max_budget; int wr_coeff; int seek_history; void* soft_rt_next_start; void* split_time; void* wr_start_at_switch_to_srt; void* last_wr_start_finish; void* budget_timeout; int pid; TYPE_2__ ttime; struct bfq_data* bfqd; scalar_t__ ref; int woken_list; int woken_list_node; int burst_list_node; int fifo; TYPE_1__ entity; } ;
struct bfq_io_cq {int dummy; } ;
struct bfq_data {int dummy; } ;
typedef int pid_t ;


 int INIT_HLIST_HEAD (int *) ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int bfq_class_idle (struct bfq_queue*) ;
 int bfq_clear_bfqq_sync (struct bfq_queue*) ;
 int bfq_mark_bfqq_IO_bound (struct bfq_queue*) ;
 int bfq_mark_bfqq_has_short_ttime (struct bfq_queue*) ;
 int bfq_mark_bfqq_just_created (struct bfq_queue*) ;
 int bfq_mark_bfqq_sync (struct bfq_queue*) ;
 int bfq_max_budget (struct bfq_data*) ;
 int bfq_set_next_ioprio_data (struct bfq_queue*,struct bfq_io_cq*) ;
 void* bfq_smallest_from_now () ;
 void* jiffies ;
 scalar_t__ ktime_get_ns () ;

__attribute__((used)) static void bfq_init_bfqq(struct bfq_data *bfqd, struct bfq_queue *bfqq,
     struct bfq_io_cq *bic, pid_t pid, int is_sync)
{
 RB_CLEAR_NODE(&bfqq->entity.rb_node);
 INIT_LIST_HEAD(&bfqq->fifo);
 INIT_HLIST_NODE(&bfqq->burst_list_node);
 INIT_HLIST_NODE(&bfqq->woken_list_node);
 INIT_HLIST_HEAD(&bfqq->woken_list);

 bfqq->ref = 0;
 bfqq->bfqd = bfqd;

 if (bic)
  bfq_set_next_ioprio_data(bfqq, bic);

 if (is_sync) {





  if (!bfq_class_idle(bfqq))

   bfq_mark_bfqq_has_short_ttime(bfqq);
  bfq_mark_bfqq_sync(bfqq);
  bfq_mark_bfqq_just_created(bfqq);
 } else
  bfq_clear_bfqq_sync(bfqq);


 bfqq->ttime.last_end_request = ktime_get_ns() + 1;

 bfq_mark_bfqq_IO_bound(bfqq);

 bfqq->pid = pid;


 bfqq->max_budget = (2 * bfq_max_budget(bfqd)) / 3;
 bfqq->budget_timeout = bfq_smallest_from_now();

 bfqq->wr_coeff = 1;
 bfqq->last_wr_start_finish = jiffies;
 bfqq->wr_start_at_switch_to_srt = bfq_smallest_from_now();
 bfqq->split_time = bfq_smallest_from_now();
 bfqq->soft_rt_next_start = jiffies;


 bfqq->seek_history = 1;
}
