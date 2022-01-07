
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {scalar_t__ dispatched; int sort_list; int budget_timeout; } ;
struct bfq_data {int nonrot_with_queueing; } ;
typedef enum bfqq_expiration { ____Placeholder_bfqq_expiration } bfqq_expiration ;


 int BFQQE_PREEMPTED ;
 scalar_t__ BFQQ_SEEKY (struct bfq_queue*) ;
 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int __bfq_bfqd_reset_in_service (struct bfq_data*) ;
 scalar_t__ bfq_bfqq_coop (struct bfq_queue*) ;
 int bfq_del_bfqq_busy (struct bfq_data*,struct bfq_queue*,int) ;
 int bfq_mark_bfqq_split_coop (struct bfq_queue*) ;
 int bfq_pos_tree_add_move (struct bfq_data*,struct bfq_queue*) ;
 int bfq_requeue_bfqq (struct bfq_data*,struct bfq_queue*,int) ;
 scalar_t__ idling_needed_for_service_guarantees (struct bfq_data*,struct bfq_queue*) ;
 int jiffies ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool __bfq_bfqq_expire(struct bfq_data *bfqd, struct bfq_queue *bfqq,
         enum bfqq_expiration reason)
{






 if (bfq_bfqq_coop(bfqq) && BFQQ_SEEKY(bfqq))
  bfq_mark_bfqq_split_coop(bfqq);
 if (RB_EMPTY_ROOT(&bfqq->sort_list) &&
     !(reason == BFQQE_PREEMPTED &&
       idling_needed_for_service_guarantees(bfqd, bfqq))) {
  if (bfqq->dispatched == 0)






   bfqq->budget_timeout = jiffies;

  bfq_del_bfqq_busy(bfqd, bfqq, 1);
 } else {
  bfq_requeue_bfqq(bfqd, bfqq, 1);




  if (unlikely(!bfqd->nonrot_with_queueing &&
        !RB_EMPTY_ROOT(&bfqq->sort_list)))
   bfq_pos_tree_add_move(bfqd, bfqq);
 }
 return __bfq_bfqd_reset_in_service(bfqd);
}
