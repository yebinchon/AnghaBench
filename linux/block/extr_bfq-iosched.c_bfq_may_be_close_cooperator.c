
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {scalar_t__ ioprio_class; } ;


 scalar_t__ BFQQ_SEEKY (struct bfq_queue*) ;
 int bfq_bfqq_sync (struct bfq_queue*) ;
 scalar_t__ bfq_class_idle (struct bfq_queue*) ;
 scalar_t__ bfq_too_late_for_merging (struct bfq_queue*) ;

__attribute__((used)) static bool bfq_may_be_close_cooperator(struct bfq_queue *bfqq,
     struct bfq_queue *new_bfqq)
{
 if (bfq_too_late_for_merging(new_bfqq))
  return 0;

 if (bfq_class_idle(bfqq) || bfq_class_idle(new_bfqq) ||
     (bfqq->ioprio_class != new_bfqq->ioprio_class))
  return 0;






 if (BFQQ_SEEKY(bfqq) || BFQQ_SEEKY(new_bfqq))
  return 0;






 if (!bfq_bfqq_sync(bfqq) || !bfq_bfqq_sync(new_bfqq))
  return 0;

 return 1;
}
