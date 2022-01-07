
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int wr_coeff; scalar_t__ dispatched; } ;
struct bfq_data {scalar_t__ wr_busy_queues; scalar_t__ rq_in_driver; } ;


 scalar_t__ bfq_asymmetric_scenario (struct bfq_data*,struct bfq_queue*) ;
 scalar_t__ bfq_tot_busy_queues (struct bfq_data*) ;

__attribute__((used)) static bool idling_needed_for_service_guarantees(struct bfq_data *bfqd,
       struct bfq_queue *bfqq)
{
 return (bfqq->wr_coeff > 1 &&
  (bfqd->wr_busy_queues <
   bfq_tot_busy_queues(bfqd) ||
   bfqd->rq_in_driver >=
   bfqq->dispatched + 4)) ||
  bfq_asymmetric_scenario(bfqd, bfqq);
}
