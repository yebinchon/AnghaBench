
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int budget_timeout; } ;


 int time_is_before_eq_jiffies (int ) ;

__attribute__((used)) static bool bfq_bfqq_budget_timeout(struct bfq_queue *bfqq)
{
 return time_is_before_eq_jiffies(bfqq->budget_timeout);
}
