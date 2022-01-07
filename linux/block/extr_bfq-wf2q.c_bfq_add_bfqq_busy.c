
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int ioprio_class; int wr_coeff; int dispatched; } ;
struct bfq_data {int wr_busy_queues; int queue_weights_tree; int * busy_queues; } ;


 int bfq_activate_bfqq (struct bfq_data*,struct bfq_queue*) ;
 int bfq_log_bfqq (struct bfq_data*,struct bfq_queue*,char*) ;
 int bfq_mark_bfqq_busy (struct bfq_queue*) ;
 int bfq_weights_tree_add (struct bfq_data*,struct bfq_queue*,int *) ;

void bfq_add_bfqq_busy(struct bfq_data *bfqd, struct bfq_queue *bfqq)
{
 bfq_log_bfqq(bfqd, bfqq, "add to busy");

 bfq_activate_bfqq(bfqd, bfqq);

 bfq_mark_bfqq_busy(bfqq);
 bfqd->busy_queues[bfqq->ioprio_class - 1]++;

 if (!bfqq->dispatched)
  if (bfqq->wr_coeff == 1)
   bfq_weights_tree_add(bfqd, bfqq,
          &bfqd->queue_weights_tree);

 if (bfqq->wr_coeff > 1)
  bfqd->wr_busy_queues++;
}
