
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {struct rq_wait* rq_wait; } ;
struct rq_wait {int wait; } ;


 int WBT_NUM_RWQ ;
 int wake_up_all (int *) ;
 scalar_t__ wq_has_sleeper (int *) ;

__attribute__((used)) static void rwb_wake_all(struct rq_wb *rwb)
{
 int i;

 for (i = 0; i < WBT_NUM_RWQ; i++) {
  struct rq_wait *rqw = &rwb->rq_wait[i];

  if (wq_has_sleeper(&rqw->wait))
   wake_up_all(&rqw->wait);
 }
}
