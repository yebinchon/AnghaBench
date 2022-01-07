
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu_context {TYPE_2__* spu; } ;
struct TYPE_4__ {int register_lock; TYPE_1__* problem; } ;
struct TYPE_3__ {int spu_status_R; int spu_runcntl_RW; } ;


 int SPU_RUNCNTL_STOP ;
 int SPU_STATUS_RUNNING ;
 int cpu_relax () ;
 int in_be32 (int *) ;
 int out_be32 (int *,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void spu_hw_runcntl_stop(struct spu_context *ctx)
{
 spin_lock_irq(&ctx->spu->register_lock);
 out_be32(&ctx->spu->problem->spu_runcntl_RW, SPU_RUNCNTL_STOP);
 while (in_be32(&ctx->spu->problem->spu_status_R) & SPU_STATUS_RUNNING)
  cpu_relax();
 spin_unlock_irq(&ctx->spu->register_lock);
}
