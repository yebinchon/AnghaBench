
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int queuelist; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
struct TYPE_3__ {struct request* (* dispatch_request ) (struct blk_mq_hw_ctx*) ;int (* has_work ) (struct blk_mq_hw_ctx*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int LIST_HEAD (int ) ;
 scalar_t__ blk_mq_dispatch_rq_list (struct request_queue*,int *,int) ;
 int blk_mq_get_dispatch_budget (struct blk_mq_hw_ctx*) ;
 int blk_mq_put_dispatch_budget (struct blk_mq_hw_ctx*) ;
 int list_add (int *,int *) ;
 int rq_list ;
 int stub1 (struct blk_mq_hw_ctx*) ;
 struct request* stub2 (struct blk_mq_hw_ctx*) ;

__attribute__((used)) static void blk_mq_do_dispatch_sched(struct blk_mq_hw_ctx *hctx)
{
 struct request_queue *q = hctx->queue;
 struct elevator_queue *e = q->elevator;
 LIST_HEAD(rq_list);

 do {
  struct request *rq;

  if (e->type->ops.has_work && !e->type->ops.has_work(hctx))
   break;

  if (!blk_mq_get_dispatch_budget(hctx))
   break;

  rq = e->type->ops.dispatch_request(hctx);
  if (!rq) {
   blk_mq_put_dispatch_budget(hctx);
   break;
  }






  list_add(&rq->queuelist, &rq_list);
 } while (blk_mq_dispatch_rq_list(q, &rq_list, 1));
}
