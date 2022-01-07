
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int ioprio_class; int wr_coeff; int dispatched; } ;
struct bfq_data {int wr_busy_queues; int * busy_queues; } ;


 int bfq_clear_bfqq_busy (struct bfq_queue*) ;
 int bfq_deactivate_bfqq (struct bfq_data*,struct bfq_queue*,int,int) ;
 int bfq_log_bfqq (struct bfq_data*,struct bfq_queue*,char*) ;
 int bfq_weights_tree_remove (struct bfq_data*,struct bfq_queue*) ;
 int bfqg_stats_update_dequeue (int ) ;
 int bfqq_group (struct bfq_queue*) ;

void bfq_del_bfqq_busy(struct bfq_data *bfqd, struct bfq_queue *bfqq,
         bool expiration)
{
 bfq_log_bfqq(bfqd, bfqq, "del from busy");

 bfq_clear_bfqq_busy(bfqq);

 bfqd->busy_queues[bfqq->ioprio_class - 1]--;

 if (bfqq->wr_coeff > 1)
  bfqd->wr_busy_queues--;

 bfqg_stats_update_dequeue(bfqq_group(bfqq));

 bfq_deactivate_bfqq(bfqd, bfqq, 1, expiration);

 if (!bfqq->dispatched)
  bfq_weights_tree_remove(bfqd, bfqq);
}
