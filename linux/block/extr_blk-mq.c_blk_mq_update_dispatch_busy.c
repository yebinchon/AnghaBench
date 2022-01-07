
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_mq_hw_ctx {unsigned int dispatch_busy; TYPE_1__* queue; } ;
struct TYPE_2__ {scalar_t__ elevator; } ;


 int BLK_MQ_DISPATCH_BUSY_EWMA_FACTOR ;
 int BLK_MQ_DISPATCH_BUSY_EWMA_WEIGHT ;

__attribute__((used)) static void blk_mq_update_dispatch_busy(struct blk_mq_hw_ctx *hctx, bool busy)
{
 unsigned int ewma;

 if (hctx->queue->elevator)
  return;

 ewma = hctx->dispatch_busy;

 if (!ewma && !busy)
  return;

 ewma *= BLK_MQ_DISPATCH_BUSY_EWMA_WEIGHT - 1;
 if (busy)
  ewma += 1 << BLK_MQ_DISPATCH_BUSY_EWMA_FACTOR;
 ewma /= BLK_MQ_DISPATCH_BUSY_EWMA_WEIGHT;

 hctx->dispatch_busy = ewma;
}
