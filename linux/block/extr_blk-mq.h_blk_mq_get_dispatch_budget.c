
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* mq_ops; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
struct TYPE_2__ {int (* get_budget ) (struct blk_mq_hw_ctx*) ;} ;


 int stub1 (struct blk_mq_hw_ctx*) ;

__attribute__((used)) static inline bool blk_mq_get_dispatch_budget(struct blk_mq_hw_ctx *hctx)
{
 struct request_queue *q = hctx->queue;

 if (q->mq_ops->get_budget)
  return q->mq_ops->get_budget(hctx);
 return 1;
}
