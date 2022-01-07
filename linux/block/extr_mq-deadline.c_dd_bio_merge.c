
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct deadline_data {int lock; } ;
struct blk_mq_hw_ctx {struct request_queue* queue; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 int blk_mq_free_request (struct request*) ;
 int blk_mq_sched_try_merge (struct request_queue*,struct bio*,unsigned int,struct request**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool dd_bio_merge(struct blk_mq_hw_ctx *hctx, struct bio *bio,
  unsigned int nr_segs)
{
 struct request_queue *q = hctx->queue;
 struct deadline_data *dd = q->elevator->elevator_data;
 struct request *free = ((void*)0);
 bool ret;

 spin_lock(&dd->lock);
 ret = blk_mq_sched_try_merge(q, bio, nr_segs, &free);
 spin_unlock(&dd->lock);

 if (free)
  blk_mq_free_request(free);

 return ret;
}
