
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct deadline_data {int lock; } ;
struct blk_mq_hw_ctx {TYPE_2__* queue; } ;
struct TYPE_4__ {TYPE_1__* elevator; } ;
struct TYPE_3__ {struct deadline_data* elevator_data; } ;


 struct request* __dd_dispatch_request (struct deadline_data*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct request *dd_dispatch_request(struct blk_mq_hw_ctx *hctx)
{
 struct deadline_data *dd = hctx->queue->elevator->elevator_data;
 struct request *rq;

 spin_lock(&dd->lock);
 rq = __dd_dispatch_request(dd);
 spin_unlock(&dd->lock);

 return rq;
}
