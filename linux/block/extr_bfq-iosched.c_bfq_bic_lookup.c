
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct io_context {int dummy; } ;
struct bfq_io_cq {int dummy; } ;
struct bfq_data {int dummy; } ;


 struct bfq_io_cq* icq_to_bic (int ) ;
 int ioc_lookup_icq (struct io_context*,struct request_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct bfq_io_cq *bfq_bic_lookup(struct bfq_data *bfqd,
     struct io_context *ioc,
     struct request_queue *q)
{
 if (ioc) {
  unsigned long flags;
  struct bfq_io_cq *icq;

  spin_lock_irqsave(&q->queue_lock, flags);
  icq = icq_to_bic(ioc_lookup_icq(ioc, q));
  spin_unlock_irqrestore(&q->queue_lock, flags);

  return icq;
 }

 return ((void*)0);
}
