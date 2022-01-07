
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct TYPE_3__ {struct io_cq* icq; } ;
struct request {TYPE_1__ elv; struct request_queue* q; } ;
struct io_cq {int ioc; } ;
struct io_context {int dummy; } ;
struct TYPE_4__ {struct io_context* io_context; } ;


 int GFP_ATOMIC ;
 TYPE_2__* current ;
 int get_io_context (int ) ;
 struct io_cq* ioc_create_icq (struct io_context*,struct request_queue*,int ) ;
 struct io_cq* ioc_lookup_icq (struct io_context*,struct request_queue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void blk_mq_sched_assign_ioc(struct request *rq)
{
 struct request_queue *q = rq->q;
 struct io_context *ioc;
 struct io_cq *icq;




 ioc = current->io_context;
 if (!ioc)
  return;

 spin_lock_irq(&q->queue_lock);
 icq = ioc_lookup_icq(ioc, q);
 spin_unlock_irq(&q->queue_lock);

 if (!icq) {
  icq = ioc_create_icq(ioc, q, GFP_ATOMIC);
  if (!icq)
   return;
 }
 get_io_context(icq->ioc);
 rq->elv.icq = icq;
}
