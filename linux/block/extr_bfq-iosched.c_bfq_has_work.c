
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct blk_mq_hw_ctx {TYPE_2__* queue; } ;
struct bfq_data {int dispatch; } ;
struct TYPE_4__ {TYPE_1__* elevator; } ;
struct TYPE_3__ {struct bfq_data* elevator_data; } ;


 scalar_t__ bfq_tot_busy_queues (struct bfq_data*) ;
 int list_empty_careful (int *) ;

__attribute__((used)) static bool bfq_has_work(struct blk_mq_hw_ctx *hctx)
{
 struct bfq_data *bfqd = hctx->queue->elevator->elevator_data;





 return !list_empty_careful(&bfqd->dispatch) ||
  bfq_tot_busy_queues(bfqd) > 0;
}
