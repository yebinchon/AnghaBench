
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int queue_flags; TYPE_2__* mq_ops; } ;
struct request {int ipi_list; TYPE_1__* mq_ctx; struct request_queue* q; } ;
struct list_head {int * next; } ;
struct TYPE_4__ {int complete; } ;
struct TYPE_3__ {int cpu; } ;


 int BLOCK_SOFTIRQ ;
 int BUG_ON (int) ;
 int QUEUE_FLAG_SAME_COMP ;
 int QUEUE_FLAG_SAME_FORCE ;
 int blk_cpu_done ;
 int cpus_share_cache (int,int) ;
 int list_add_tail (int *,struct list_head*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ raise_blk_irq (int,struct request*) ;
 int raise_softirq_irqoff (int ) ;
 int smp_processor_id () ;
 scalar_t__ test_bit (int ,int *) ;
 struct list_head* this_cpu_ptr (int *) ;

void __blk_complete_request(struct request *req)
{
 struct request_queue *q = req->q;
 int cpu, ccpu = req->mq_ctx->cpu;
 unsigned long flags;
 bool shared = 0;

 BUG_ON(!q->mq_ops->complete);

 local_irq_save(flags);
 cpu = smp_processor_id();




 if (test_bit(QUEUE_FLAG_SAME_COMP, &q->queue_flags) && ccpu != -1) {
  if (!test_bit(QUEUE_FLAG_SAME_FORCE, &q->queue_flags))
   shared = cpus_share_cache(cpu, ccpu);
 } else
  ccpu = cpu;
 if (ccpu == cpu || shared) {
  struct list_head *list;
do_local:
  list = this_cpu_ptr(&blk_cpu_done);
  list_add_tail(&req->ipi_list, list);







  if (list->next == &req->ipi_list)
   raise_softirq_irqoff(BLOCK_SOFTIRQ);
 } else if (raise_blk_irq(ccpu, req))
  goto do_local;

 local_irq_restore(flags);
}
