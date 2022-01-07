
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct deadline_data {int * fifo_list; int dispatch; } ;
struct blk_mq_hw_ctx {TYPE_2__* queue; } ;
struct TYPE_4__ {TYPE_1__* elevator; } ;
struct TYPE_3__ {struct deadline_data* elevator_data; } ;


 int list_empty_careful (int *) ;

__attribute__((used)) static bool dd_has_work(struct blk_mq_hw_ctx *hctx)
{
 struct deadline_data *dd = hctx->queue->elevator->elevator_data;

 return !list_empty_careful(&dd->dispatch) ||
  !list_empty_careful(&dd->fifo_list[0]) ||
  !list_empty_careful(&dd->fifo_list[1]);
}
