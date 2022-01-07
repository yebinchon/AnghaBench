
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_entity {scalar_t__ weight; scalar_t__ orig_weight; int prio_changed; } ;
struct bfq_queue {int wr_coeff; scalar_t__ last_wr_start_finish; scalar_t__ wr_cur_max_time; scalar_t__ wr_start_at_switch_to_srt; scalar_t__ service_from_wr; struct bfq_entity entity; } ;
struct bfq_data {scalar_t__ bfq_wr_rt_max_time; } ;


 int __bfq_entity_update_weight_prio (int ,struct bfq_entity*,int) ;
 int bfq_bfqq_end_wr (struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_in_large_burst (struct bfq_queue*) ;
 int bfq_entity_service_tree (struct bfq_entity*) ;
 int bfq_log_bfqq (struct bfq_data*,struct bfq_queue*,char*,...) ;
 scalar_t__ bfq_wr_duration (struct bfq_data*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ max_service_from_wr ;
 int switch_back_to_interactive_wr (struct bfq_queue*,struct bfq_data*) ;
 scalar_t__ time_is_before_jiffies (scalar_t__) ;

__attribute__((used)) static void bfq_update_wr_data(struct bfq_data *bfqd, struct bfq_queue *bfqq)
{
 struct bfq_entity *entity = &bfqq->entity;

 if (bfqq->wr_coeff > 1) {
  bfq_log_bfqq(bfqd, bfqq,
   "raising period dur %u/%u msec, old coeff %u, w %d(%d)",
   jiffies_to_msecs(jiffies - bfqq->last_wr_start_finish),
   jiffies_to_msecs(bfqq->wr_cur_max_time),
   bfqq->wr_coeff,
   bfqq->entity.weight, bfqq->entity.orig_weight);

  if (entity->prio_changed)
   bfq_log_bfqq(bfqd, bfqq, "WARN: pending prio change");






  if (bfq_bfqq_in_large_burst(bfqq))
   bfq_bfqq_end_wr(bfqq);
  else if (time_is_before_jiffies(bfqq->last_wr_start_finish +
      bfqq->wr_cur_max_time)) {
   if (bfqq->wr_cur_max_time != bfqd->bfq_wr_rt_max_time ||
   time_is_before_jiffies(bfqq->wr_start_at_switch_to_srt +
            bfq_wr_duration(bfqd)))
    bfq_bfqq_end_wr(bfqq);
   else {
    switch_back_to_interactive_wr(bfqq, bfqd);
    bfqq->entity.prio_changed = 1;
   }
  }
  if (bfqq->wr_coeff > 1 &&
      bfqq->wr_cur_max_time != bfqd->bfq_wr_rt_max_time &&
      bfqq->service_from_wr > max_service_from_wr) {

   bfq_bfqq_end_wr(bfqq);
  }
 }
 if ((entity->weight > entity->orig_weight) != (bfqq->wr_coeff > 1))
  __bfq_entity_update_weight_prio(bfq_entity_service_tree(entity),
      entity, 0);
}
