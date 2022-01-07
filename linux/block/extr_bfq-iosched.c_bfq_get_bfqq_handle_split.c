
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
struct bfq_queue {int split_time; int burst_list_node; } ;
struct bfq_io_cq {scalar_t__ was_in_burst_list; scalar_t__ saved_in_large_burst; } ;
struct bfq_data {int burst_list; scalar_t__ large_burst; struct bfq_queue oom_bfqq; } ;


 int bfq_clear_bfqq_in_large_burst (struct bfq_queue*) ;
 struct bfq_queue* bfq_get_queue (struct bfq_data*,struct bio*,int,struct bfq_io_cq*) ;
 int bfq_mark_bfqq_in_large_burst (struct bfq_queue*) ;
 int bfq_put_queue (struct bfq_queue*) ;
 int bic_set_bfqq (struct bfq_io_cq*,struct bfq_queue*,int) ;
 struct bfq_queue* bic_to_bfqq (struct bfq_io_cq*,int) ;
 int hlist_add_head (int *,int *) ;
 int jiffies ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static struct bfq_queue *bfq_get_bfqq_handle_split(struct bfq_data *bfqd,
         struct bfq_io_cq *bic,
         struct bio *bio,
         bool split, bool is_sync,
         bool *new_queue)
{
 struct bfq_queue *bfqq = bic_to_bfqq(bic, is_sync);

 if (likely(bfqq && bfqq != &bfqd->oom_bfqq))
  return bfqq;

 if (new_queue)
  *new_queue = 1;

 if (bfqq)
  bfq_put_queue(bfqq);
 bfqq = bfq_get_queue(bfqd, bio, is_sync, bic);

 bic_set_bfqq(bic, bfqq, is_sync);
 if (split && is_sync) {
  if ((bic->was_in_burst_list && bfqd->large_burst) ||
      bic->saved_in_large_burst)
   bfq_mark_bfqq_in_large_burst(bfqq);
  else {
   bfq_clear_bfqq_in_large_burst(bfqq);
   if (bic->was_in_burst_list)
    hlist_add_head(&bfqq->burst_list_node,
            &bfqd->burst_list);
  }
  bfqq->split_time = jiffies;
 }

 return bfqq;
}
