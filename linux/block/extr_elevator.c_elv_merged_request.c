
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct request* last_merge; struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_2__* type; } ;
typedef enum elv_merge { ____Placeholder_elv_merge } elv_merge ;
struct TYPE_3__ {int (* request_merged ) (struct request_queue*,struct request*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int ELEVATOR_BACK_MERGE ;
 int elv_rqhash_reposition (struct request_queue*,struct request*) ;
 int stub1 (struct request_queue*,struct request*,int) ;

void elv_merged_request(struct request_queue *q, struct request *rq,
  enum elv_merge type)
{
 struct elevator_queue *e = q->elevator;

 if (e->type->ops.request_merged)
  e->type->ops.request_merged(q, rq, type);

 if (type == ELEVATOR_BACK_MERGE)
  elv_rqhash_reposition(q, rq);

 q->last_merge = rq;
}
