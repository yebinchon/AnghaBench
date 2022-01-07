
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct bfq_queue {struct request* next_rq; } ;
struct bfq_data {int wait_dispatch; struct bfq_queue* in_service_queue; int queue; struct request* waited_rq; } ;


 int BFQQE_BUDGET_EXHAUSTED ;
 int bfq_bfqq_expire (struct bfq_data*,struct bfq_queue*,int,int ) ;
 int bfq_bfqq_served (struct bfq_queue*,unsigned long) ;
 scalar_t__ bfq_class_idle (struct bfq_queue*) ;
 int bfq_dispatch_remove (int ,struct request*) ;
 unsigned long bfq_serv_to_charge (struct request*,struct bfq_queue*) ;
 int bfq_tot_busy_queues (struct bfq_data*) ;
 int bfq_update_wr_data (struct bfq_data*,struct bfq_queue*) ;

__attribute__((used)) static struct request *bfq_dispatch_rq_from_bfqq(struct bfq_data *bfqd,
       struct bfq_queue *bfqq)
{
 struct request *rq = bfqq->next_rq;
 unsigned long service_to_charge;

 service_to_charge = bfq_serv_to_charge(rq, bfqq);

 bfq_bfqq_served(bfqq, service_to_charge);

 if (bfqq == bfqd->in_service_queue && bfqd->wait_dispatch) {
  bfqd->wait_dispatch = 0;
  bfqd->waited_rq = rq;
 }

 bfq_dispatch_remove(bfqd->queue, rq);

 if (bfqq != bfqd->in_service_queue)
  goto return_rq;
 bfq_update_wr_data(bfqd, bfqq);






 if (!(bfq_tot_busy_queues(bfqd) > 1 && bfq_class_idle(bfqq)))
  goto return_rq;

 bfq_bfqq_expire(bfqd, bfqq, 0, BFQQE_BUDGET_EXHAUSTED);

return_rq:
 return rq;
}
