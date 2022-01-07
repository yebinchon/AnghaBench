
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int orig_weight; } ;
struct bfq_queue {int wr_cur_max_time; int last_wr_start_finish; int wr_start_at_switch_to_srt; int wr_coeff; TYPE_2__* bfqd; int burst_list_node; int ttime; TYPE_1__ entity; struct bfq_io_cq* bic; } ;
struct bfq_io_cq {int was_in_burst_list; int saved_wr_cur_max_time; int saved_last_wr_start_finish; int saved_wr_start_at_switch_to_srt; int saved_wr_coeff; int saved_in_large_burst; int saved_IO_bound; int saved_has_short_ttime; int saved_ttime; int saved_weight; } ;
struct TYPE_4__ {int bfq_wr_coeff; scalar_t__ low_latency; } ;


 int bfq_bfqq_IO_bound (struct bfq_queue*) ;
 int bfq_bfqq_has_short_ttime (struct bfq_queue*) ;
 int bfq_bfqq_in_large_burst (struct bfq_queue*) ;
 scalar_t__ bfq_bfqq_just_created (struct bfq_queue*) ;
 int bfq_smallest_from_now () ;
 int bfq_wr_duration (TYPE_2__*) ;
 int hlist_unhashed (int *) ;
 int jiffies ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void bfq_bfqq_save_state(struct bfq_queue *bfqq)
{
 struct bfq_io_cq *bic = bfqq->bic;






 if (!bic)
  return;

 bic->saved_weight = bfqq->entity.orig_weight;
 bic->saved_ttime = bfqq->ttime;
 bic->saved_has_short_ttime = bfq_bfqq_has_short_ttime(bfqq);
 bic->saved_IO_bound = bfq_bfqq_IO_bound(bfqq);
 bic->saved_in_large_burst = bfq_bfqq_in_large_burst(bfqq);
 bic->was_in_burst_list = !hlist_unhashed(&bfqq->burst_list_node);
 if (unlikely(bfq_bfqq_just_created(bfqq) &&
       !bfq_bfqq_in_large_burst(bfqq) &&
       bfqq->bfqd->low_latency)) {
  bic->saved_wr_coeff = bfqq->bfqd->bfq_wr_coeff;
  bic->saved_wr_start_at_switch_to_srt = bfq_smallest_from_now();
  bic->saved_wr_cur_max_time = bfq_wr_duration(bfqq->bfqd);
  bic->saved_last_wr_start_finish = jiffies;
 } else {
  bic->saved_wr_coeff = bfqq->wr_coeff;
  bic->saved_wr_start_at_switch_to_srt =
   bfqq->wr_start_at_switch_to_srt;
  bic->saved_last_wr_start_finish = bfqq->last_wr_start_finish;
  bic->saved_wr_cur_max_time = bfqq->wr_cur_max_time;
 }
}
