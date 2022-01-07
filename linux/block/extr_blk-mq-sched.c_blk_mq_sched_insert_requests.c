
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int q_usage_counter; struct elevator_queue* elevator; } ;
struct list_head {int dummy; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {int dispatch_busy; struct request_queue* queue; } ;
struct blk_mq_ctx {int dummy; } ;
struct TYPE_3__ {int (* insert_requests ) (struct blk_mq_hw_ctx*,struct list_head*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int blk_mq_insert_requests (struct blk_mq_hw_ctx*,struct blk_mq_ctx*,struct list_head*) ;
 int blk_mq_run_hw_queue (struct blk_mq_hw_ctx*,int) ;
 int blk_mq_try_issue_list_directly (struct blk_mq_hw_ctx*,struct list_head*) ;
 scalar_t__ list_empty (struct list_head*) ;
 int percpu_ref_get (int *) ;
 int percpu_ref_put (int *) ;
 int stub1 (struct blk_mq_hw_ctx*,struct list_head*,int) ;

void blk_mq_sched_insert_requests(struct blk_mq_hw_ctx *hctx,
      struct blk_mq_ctx *ctx,
      struct list_head *list, bool run_queue_async)
{
 struct elevator_queue *e;
 struct request_queue *q = hctx->queue;






 percpu_ref_get(&q->q_usage_counter);

 e = hctx->queue->elevator;
 if (e && e->type->ops.insert_requests)
  e->type->ops.insert_requests(hctx, list, 0);
 else {





  if (!hctx->dispatch_busy && !e && !run_queue_async) {
   blk_mq_try_issue_list_directly(hctx, list);
   if (list_empty(list))
    goto out;
  }
  blk_mq_insert_requests(hctx, ctx, list);
 }

 blk_mq_run_hw_queue(hctx, run_queue_async);
 out:
 percpu_ref_put(&q->q_usage_counter);
}
