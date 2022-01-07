
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int flags; int run_work; int cpumask; } ;


 int BLK_MQ_F_BLOCKING ;
 int __blk_mq_run_hw_queue (struct blk_mq_hw_ctx*) ;
 int blk_mq_hctx_next_cpu (struct blk_mq_hw_ctx*) ;
 int blk_mq_hctx_stopped (struct blk_mq_hw_ctx*) ;
 scalar_t__ cpumask_test_cpu (int,int ) ;
 int get_cpu () ;
 int kblockd_mod_delayed_work_on (int ,int *,int ) ;
 int msecs_to_jiffies (unsigned long) ;
 int put_cpu () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void __blk_mq_delay_run_hw_queue(struct blk_mq_hw_ctx *hctx, bool async,
     unsigned long msecs)
{
 if (unlikely(blk_mq_hctx_stopped(hctx)))
  return;

 if (!async && !(hctx->flags & BLK_MQ_F_BLOCKING)) {
  int cpu = get_cpu();
  if (cpumask_test_cpu(cpu, hctx->cpumask)) {
   __blk_mq_run_hw_queue(hctx);
   put_cpu();
   return;
  }

  put_cpu();
 }

 kblockd_mod_delayed_work_on(blk_mq_hctx_next_cpu(hctx), &hctx->run_work,
        msecs_to_jiffies(msecs));
}
