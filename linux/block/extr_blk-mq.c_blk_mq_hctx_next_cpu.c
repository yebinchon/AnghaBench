
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_mq_hw_ctx {int next_cpu; scalar_t__ next_cpu_batch; int cpumask; TYPE_1__* queue; } ;
struct TYPE_2__ {int nr_hw_queues; } ;


 scalar_t__ BLK_MQ_CPU_WORK_BATCH ;
 int WORK_CPU_UNBOUND ;
 int blk_mq_first_mapped_cpu (struct blk_mq_hw_ctx*) ;
 int cpu_online (int) ;
 int cpu_online_mask ;
 int cpumask_next_and (int,int ,int ) ;
 int nr_cpu_ids ;

__attribute__((used)) static int blk_mq_hctx_next_cpu(struct blk_mq_hw_ctx *hctx)
{
 bool tried = 0;
 int next_cpu = hctx->next_cpu;

 if (hctx->queue->nr_hw_queues == 1)
  return WORK_CPU_UNBOUND;

 if (--hctx->next_cpu_batch <= 0) {
select_cpu:
  next_cpu = cpumask_next_and(next_cpu, hctx->cpumask,
    cpu_online_mask);
  if (next_cpu >= nr_cpu_ids)
   next_cpu = blk_mq_first_mapped_cpu(hctx);
  hctx->next_cpu_batch = BLK_MQ_CPU_WORK_BATCH;
 }





 if (!cpu_online(next_cpu)) {
  if (!tried) {
   tried = 1;
   goto select_cpu;
  }





  hctx->next_cpu = next_cpu;
  hctx->next_cpu_batch = 1;
  return WORK_CPU_UNBOUND;
 }

 hctx->next_cpu = next_cpu;
 return next_cpu;
}
