
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct request* last_merge; struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct TYPE_3__ {int (* requests_merged ) (struct request_queue*,struct request*,struct request*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int elv_rqhash_reposition (struct request_queue*,struct request*) ;
 int stub1 (struct request_queue*,struct request*,struct request*) ;

void elv_merge_requests(struct request_queue *q, struct request *rq,
        struct request *next)
{
 struct elevator_queue *e = q->elevator;

 if (e->type->ops.requests_merged)
  e->type->ops.requests_merged(q, rq, next);

 elv_rqhash_reposition(q, rq);
 q->last_merge = rq;
}
