
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct kyber_queue_data {int dummy; } ;
struct kyber_hctx_data {scalar_t__ batching; size_t cur_domain; int lock; } ;
struct blk_mq_hw_ctx {struct kyber_hctx_data* sched_data; TYPE_2__* queue; } ;
struct TYPE_4__ {TYPE_1__* elevator; } ;
struct TYPE_3__ {struct kyber_queue_data* elevator_data; } ;


 int KYBER_NUM_DOMAINS ;
 scalar_t__* kyber_batch_size ;
 struct request* kyber_dispatch_cur_domain (struct kyber_queue_data*,struct kyber_hctx_data*,struct blk_mq_hw_ctx*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct request *kyber_dispatch_request(struct blk_mq_hw_ctx *hctx)
{
 struct kyber_queue_data *kqd = hctx->queue->elevator->elevator_data;
 struct kyber_hctx_data *khd = hctx->sched_data;
 struct request *rq;
 int i;

 spin_lock(&khd->lock);





 if (khd->batching < kyber_batch_size[khd->cur_domain]) {
  rq = kyber_dispatch_cur_domain(kqd, khd, hctx);
  if (rq)
   goto out;
 }
 khd->batching = 0;
 for (i = 0; i < KYBER_NUM_DOMAINS; i++) {
  if (khd->cur_domain == KYBER_NUM_DOMAINS - 1)
   khd->cur_domain = 0;
  else
   khd->cur_domain++;

  rq = kyber_dispatch_cur_domain(kqd, khd, hctx);
  if (rq)
   goto out;
 }

 rq = ((void*)0);
out:
 spin_unlock(&khd->lock);
 return rq;
}
