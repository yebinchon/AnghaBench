
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfq_queue {int * bic; struct bfq_data* bfqd; } ;
struct bfq_io_cq {int dummy; } ;
struct bfq_data {int lock; } ;


 int bfq_exit_bfqq (struct bfq_data*,struct bfq_queue*) ;
 int bic_set_bfqq (struct bfq_io_cq*,int *,int) ;
 struct bfq_queue* bic_to_bfqq (struct bfq_io_cq*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bfq_exit_icq_bfqq(struct bfq_io_cq *bic, bool is_sync)
{
 struct bfq_queue *bfqq = bic_to_bfqq(bic, is_sync);
 struct bfq_data *bfqd;

 if (bfqq)
  bfqd = bfqq->bfqd;

 if (bfqq && bfqd) {
  unsigned long flags;

  spin_lock_irqsave(&bfqd->lock, flags);
  bfqq->bic = ((void*)0);
  bfq_exit_bfqq(bfqd, bfqq);
  bic_set_bfqq(bic, ((void*)0), is_sync);
  spin_unlock_irqrestore(&bfqd->lock, flags);
 }
}
