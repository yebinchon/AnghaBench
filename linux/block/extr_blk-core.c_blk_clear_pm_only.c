
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int mq_freeze_wq; int pm_only; } ;


 int WARN_ON_ONCE (int) ;
 int atomic_dec_return (int *) ;
 int wake_up_all (int *) ;

void blk_clear_pm_only(struct request_queue *q)
{
 int pm_only;

 pm_only = atomic_dec_return(&q->pm_only);
 WARN_ON_ONCE(pm_only < 0);
 if (pm_only == 0)
  wake_up_all(&q->mq_freeze_wq);
}
