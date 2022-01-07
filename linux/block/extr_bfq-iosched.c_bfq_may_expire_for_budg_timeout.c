
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int budget; } ;
struct bfq_queue {TYPE_1__ entity; int bfqd; } ;


 int bfq_bfqq_budget_left (struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_budget_timeout (struct bfq_queue*) ;
 int bfq_bfqq_wait_request (struct bfq_queue*) ;
 int bfq_log_bfqq (int ,struct bfq_queue*,char*,int ,int,scalar_t__) ;

__attribute__((used)) static bool bfq_may_expire_for_budg_timeout(struct bfq_queue *bfqq)
{
 bfq_log_bfqq(bfqq->bfqd, bfqq,
  "may_budget_timeout: wait_request %d left %d timeout %d",
  bfq_bfqq_wait_request(bfqq),
   bfq_bfqq_budget_left(bfqq) >= bfqq->entity.budget / 3,
  bfq_bfqq_budget_timeout(bfqq));

 return (!bfq_bfqq_wait_request(bfqq) ||
  bfq_bfqq_budget_left(bfqq) >= bfqq->entity.budget / 3)
  &&
  bfq_bfqq_budget_timeout(bfqq);
}
