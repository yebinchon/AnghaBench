
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int weight; unsigned int orig_weight; } ;
struct bfq_queue {scalar_t__ wr_cur_max_time; scalar_t__ budget_timeout; TYPE_1__ entity; } ;
struct bfq_data {scalar_t__ bfq_wr_rt_max_time; unsigned int bfq_timeout; int last_budget_start; } ;


 scalar_t__ jiffies ;
 int ktime_get () ;

__attribute__((used)) static void bfq_set_budget_timeout(struct bfq_data *bfqd,
       struct bfq_queue *bfqq)
{
 unsigned int timeout_coeff;

 if (bfqq->wr_cur_max_time == bfqd->bfq_wr_rt_max_time)
  timeout_coeff = 1;
 else
  timeout_coeff = bfqq->entity.weight / bfqq->entity.orig_weight;

 bfqd->last_budget_start = ktime_get();

 bfqq->budget_timeout = jiffies +
  bfqd->bfq_timeout * timeout_coeff;
}
