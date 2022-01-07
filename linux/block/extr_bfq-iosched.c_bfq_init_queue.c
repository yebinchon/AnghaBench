
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {int node; int queue_lock; struct elevator_queue* elevator; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {int kobj; struct bfq_data* elevator_data; } ;
struct TYPE_6__ {int prio_changed; int new_weight; } ;
struct TYPE_7__ {TYPE_2__ entity; int new_ioprio; int new_ioprio_class; int ref; } ;
struct TYPE_5__ {int function; } ;
struct bfq_data {int hw_tag; size_t nonrot_with_queueing; int bfq_requests_within_timer; int bfq_large_burst_thresh; int low_latency; int bfq_wr_coeff; int bfq_wr_max_softrt_rate; int rate_dur_prod; int peak_rate; int root_group; TYPE_3__ oom_bfqq; int lock; struct request_queue* queue; scalar_t__ wr_busy_queues; void* bfq_wr_min_inter_arr_async; void* bfq_wr_min_idle_time; scalar_t__ bfq_wr_max_time; void* bfq_wr_rt_max_time; void* bfq_burst_interval; int bfq_timeout; int bfq_slice_idle; int bfq_back_penalty; int bfq_back_max; void** bfq_fifo_expire; int bfq_max_budget; int burst_list; int idle_list; int active_list; scalar_t__ num_groups_with_pending_reqs; int queue_weights_tree; TYPE_1__ idle_slice_timer; int dispatch; } ;


 int BFQ_DEFAULT_QUEUE_IOPRIO ;
 int CLOCK_MONOTONIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int IOPRIO_CLASS_BE ;
 int RB_ROOT_CACHED ;
 int bfq_back_max ;
 int bfq_back_penalty ;
 int bfq_clear_bfqq_just_created (TYPE_3__*) ;
 int bfq_create_group_hierarchy (struct bfq_data*,int ) ;
 int bfq_default_max_budget ;
 void** bfq_fifo_expire ;
 int bfq_idle_slice_timer ;
 int bfq_init_bfqq (struct bfq_data*,TYPE_3__*,int *,int,int ) ;
 int bfq_init_entity (TYPE_2__*,int ) ;
 int bfq_init_root_group (int ,struct bfq_data*) ;
 int bfq_ioprio_to_weight (int ) ;
 int bfq_slice_idle ;
 int bfq_timeout ;
 size_t blk_queue_nonrot (struct request_queue*) ;
 struct elevator_queue* elevator_alloc (struct request_queue*,struct elevator_type*) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int kfree (struct bfq_data*) ;
 int kobject_put (int *) ;
 struct bfq_data* kzalloc_node (int,int ,int ) ;
 void* msecs_to_jiffies (int) ;
 int* ref_rate ;
 int* ref_wr_duration ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wbt_disable_default (struct request_queue*) ;

__attribute__((used)) static int bfq_init_queue(struct request_queue *q, struct elevator_type *e)
{
 struct bfq_data *bfqd;
 struct elevator_queue *eq;

 eq = elevator_alloc(q, e);
 if (!eq)
  return -ENOMEM;

 bfqd = kzalloc_node(sizeof(*bfqd), GFP_KERNEL, q->node);
 if (!bfqd) {
  kobject_put(&eq->kobj);
  return -ENOMEM;
 }
 eq->elevator_data = bfqd;

 spin_lock_irq(&q->queue_lock);
 q->elevator = eq;
 spin_unlock_irq(&q->queue_lock);






 bfq_init_bfqq(bfqd, &bfqd->oom_bfqq, ((void*)0), 1, 0);
 bfqd->oom_bfqq.ref++;
 bfqd->oom_bfqq.new_ioprio = BFQ_DEFAULT_QUEUE_IOPRIO;
 bfqd->oom_bfqq.new_ioprio_class = IOPRIO_CLASS_BE;
 bfqd->oom_bfqq.entity.new_weight =
  bfq_ioprio_to_weight(bfqd->oom_bfqq.new_ioprio);


 bfq_clear_bfqq_just_created(&bfqd->oom_bfqq);






 bfqd->oom_bfqq.entity.prio_changed = 1;

 bfqd->queue = q;

 INIT_LIST_HEAD(&bfqd->dispatch);

 hrtimer_init(&bfqd->idle_slice_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_REL);
 bfqd->idle_slice_timer.function = bfq_idle_slice_timer;

 bfqd->queue_weights_tree = RB_ROOT_CACHED;
 bfqd->num_groups_with_pending_reqs = 0;

 INIT_LIST_HEAD(&bfqd->active_list);
 INIT_LIST_HEAD(&bfqd->idle_list);
 INIT_HLIST_HEAD(&bfqd->burst_list);

 bfqd->hw_tag = -1;
 bfqd->nonrot_with_queueing = blk_queue_nonrot(bfqd->queue);

 bfqd->bfq_max_budget = bfq_default_max_budget;

 bfqd->bfq_fifo_expire[0] = bfq_fifo_expire[0];
 bfqd->bfq_fifo_expire[1] = bfq_fifo_expire[1];
 bfqd->bfq_back_max = bfq_back_max;
 bfqd->bfq_back_penalty = bfq_back_penalty;
 bfqd->bfq_slice_idle = bfq_slice_idle;
 bfqd->bfq_timeout = bfq_timeout;

 bfqd->bfq_requests_within_timer = 120;

 bfqd->bfq_large_burst_thresh = 8;
 bfqd->bfq_burst_interval = msecs_to_jiffies(180);

 bfqd->low_latency = 1;




 bfqd->bfq_wr_coeff = 30;
 bfqd->bfq_wr_rt_max_time = msecs_to_jiffies(300);
 bfqd->bfq_wr_max_time = 0;
 bfqd->bfq_wr_min_idle_time = msecs_to_jiffies(2000);
 bfqd->bfq_wr_min_inter_arr_async = msecs_to_jiffies(500);
 bfqd->bfq_wr_max_softrt_rate = 7000;





 bfqd->wr_busy_queues = 0;





 bfqd->rate_dur_prod = ref_rate[blk_queue_nonrot(bfqd->queue)] *
  ref_wr_duration[blk_queue_nonrot(bfqd->queue)];
 bfqd->peak_rate = ref_rate[blk_queue_nonrot(bfqd->queue)] * 2 / 3;

 spin_lock_init(&bfqd->lock);
 bfqd->root_group = bfq_create_group_hierarchy(bfqd, q->node);
 if (!bfqd->root_group)
  goto out_free;
 bfq_init_root_group(bfqd->root_group, bfqd);
 bfq_init_entity(&bfqd->oom_bfqq.entity, bfqd->root_group);

 wbt_disable_default(q);
 return 0;

out_free:
 kfree(bfqd);
 kobject_put(&eq->kobj);
 return -ENOMEM;
}
