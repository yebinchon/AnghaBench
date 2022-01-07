
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {struct bfq_data* bfqd; } ;
struct bfq_data {scalar_t__ bfq_slice_idle; int strict_guarantees; } ;


 int bfq_bfqq_sync (struct bfq_queue*) ;
 scalar_t__ bfq_class_idle (struct bfq_queue*) ;
 int idling_boosts_thr_without_issues (struct bfq_data*,struct bfq_queue*) ;
 int idling_needed_for_service_guarantees (struct bfq_data*,struct bfq_queue*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool bfq_better_to_idle(struct bfq_queue *bfqq)
{
 struct bfq_data *bfqd = bfqq->bfqd;
 bool idling_boosts_thr_with_no_issue, idling_needed_for_service_guar;

 if (unlikely(bfqd->strict_guarantees))
  return 1;
 if (bfqd->bfq_slice_idle == 0 || !bfq_bfqq_sync(bfqq) ||
    bfq_class_idle(bfqq))
  return 0;

 idling_boosts_thr_with_no_issue =
  idling_boosts_thr_without_issues(bfqd, bfqq);

 idling_needed_for_service_guar =
  idling_needed_for_service_guarantees(bfqd, bfqq);







 return idling_boosts_thr_with_no_issue ||
  idling_needed_for_service_guar;
}
