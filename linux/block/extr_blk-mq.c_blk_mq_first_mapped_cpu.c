
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int cpumask; } ;


 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int cpumask_first_and (int ,int ) ;
 int nr_cpu_ids ;

__attribute__((used)) static inline int blk_mq_first_mapped_cpu(struct blk_mq_hw_ctx *hctx)
{
 int cpu = cpumask_first_and(hctx->cpumask, cpu_online_mask);

 if (cpu >= nr_cpu_ids)
  cpu = cpumask_first(hctx->cpumask);
 return cpu;
}
