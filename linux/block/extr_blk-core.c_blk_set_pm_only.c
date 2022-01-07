
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int pm_only; } ;


 int atomic_inc (int *) ;

void blk_set_pm_only(struct request_queue *q)
{
 atomic_inc(&q->pm_only);
}
