
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct bfq_queue {int dispatched; } ;
struct TYPE_2__ {int elevator_data; } ;


 struct bfq_queue* RQ_BFQQ (struct request*) ;
 int bfq_remove_request (struct request_queue*,struct request*) ;
 int bfq_update_peak_rate (int ,struct request*) ;

__attribute__((used)) static void bfq_dispatch_remove(struct request_queue *q, struct request *rq)
{
 struct bfq_queue *bfqq = RQ_BFQQ(rq);
 bfqq->dispatched++;
 bfq_update_peak_rate(q->elevator->elevator_data, rq);

 bfq_remove_request(q, rq);
}
