
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct TYPE_3__ {struct request* (* former_request ) (struct request_queue*,struct request*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 struct request* stub1 (struct request_queue*,struct request*) ;

struct request *elv_former_request(struct request_queue *q, struct request *rq)
{
 struct elevator_queue *e = q->elevator;

 if (e->type->ops.former_request)
  return e->type->ops.former_request(q, rq);

 return ((void*)0);
}
