
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {scalar_t__ state; scalar_t__ q; } ;
struct blk_mq_hw_ctx {scalar_t__ queue; } ;


 scalar_t__ MQ_RQ_IN_FLIGHT ;

__attribute__((used)) static bool blk_mq_rq_inflight(struct blk_mq_hw_ctx *hctx, struct request *rq,
          void *priv, bool reserved)
{




 if (rq->state == MQ_RQ_IN_FLIGHT && rq->q == hctx->queue) {
  bool *busy = priv;

  *busy = 1;
  return 0;
 }

 return 1;
}
