
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int mq_ctx; int queuelist; } ;
struct blk_mq_hw_ctx {int dispatch_from; int ctx_map; struct request_queue* queue; } ;
struct blk_mq_ctx {int dummy; } ;


 int LIST_HEAD (int ) ;
 struct blk_mq_ctx* READ_ONCE (int ) ;
 int WRITE_ONCE (int ,struct blk_mq_ctx*) ;
 struct request* blk_mq_dequeue_from_ctx (struct blk_mq_hw_ctx*,struct blk_mq_ctx*) ;
 scalar_t__ blk_mq_dispatch_rq_list (struct request_queue*,int *,int) ;
 int blk_mq_get_dispatch_budget (struct blk_mq_hw_ctx*) ;
 struct blk_mq_ctx* blk_mq_next_ctx (struct blk_mq_hw_ctx*,int ) ;
 int blk_mq_put_dispatch_budget (struct blk_mq_hw_ctx*) ;
 int list_add (int *,int *) ;
 int rq_list ;
 int sbitmap_any_bit_set (int *) ;

__attribute__((used)) static void blk_mq_do_dispatch_ctx(struct blk_mq_hw_ctx *hctx)
{
 struct request_queue *q = hctx->queue;
 LIST_HEAD(rq_list);
 struct blk_mq_ctx *ctx = READ_ONCE(hctx->dispatch_from);

 do {
  struct request *rq;

  if (!sbitmap_any_bit_set(&hctx->ctx_map))
   break;

  if (!blk_mq_get_dispatch_budget(hctx))
   break;

  rq = blk_mq_dequeue_from_ctx(hctx, ctx);
  if (!rq) {
   blk_mq_put_dispatch_budget(hctx);
   break;
  }






  list_add(&rq->queuelist, &rq_list);


  ctx = blk_mq_next_ctx(hctx, rq->mq_ctx);

 } while (blk_mq_dispatch_rq_list(q, &rq_list, 1));

 WRITE_ONCE(hctx->dispatch_from, ctx);
}
