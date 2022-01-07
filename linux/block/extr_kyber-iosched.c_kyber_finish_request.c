
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {TYPE_2__* q; } ;
struct kyber_queue_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* elevator; } ;
struct TYPE_3__ {struct kyber_queue_data* elevator_data; } ;


 int rq_clear_domain_token (struct kyber_queue_data*,struct request*) ;

__attribute__((used)) static void kyber_finish_request(struct request *rq)
{
 struct kyber_queue_data *kqd = rq->q->elevator->elevator_data;

 rq_clear_domain_token(kqd, rq);
}
