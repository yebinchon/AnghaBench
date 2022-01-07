
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int (* allow_merge ) (struct request_queue*,struct request*,struct bio*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct request_queue*,struct request*,struct bio*) ;

__attribute__((used)) static inline bool
blk_mq_sched_allow_merge(struct request_queue *q, struct request *rq,
    struct bio *bio)
{
 struct elevator_queue *e = q->elevator;

 if (e && e->type->ops.allow_merge)
  return e->type->ops.allow_merge(q, rq, bio);

 return 1;
}
