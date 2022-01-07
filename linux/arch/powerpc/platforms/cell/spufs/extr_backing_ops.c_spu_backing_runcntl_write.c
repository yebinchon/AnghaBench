
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int spu_runcntl_RW; int spu_status_R; } ;
struct TYPE_4__ {int register_lock; TYPE_1__ prob; } ;
struct spu_context {TYPE_2__ csa; } ;


 int SPU_RUNCNTL_RUNNABLE ;
 int SPU_STATUS_INVALID_CH ;
 int SPU_STATUS_INVALID_INSTR ;
 int SPU_STATUS_RUNNING ;
 int SPU_STATUS_SINGLE_STEP ;
 int SPU_STATUS_STOPPED_BY_HALT ;
 int SPU_STATUS_STOPPED_BY_STOP ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void spu_backing_runcntl_write(struct spu_context *ctx, u32 val)
{
 spin_lock(&ctx->csa.register_lock);
 ctx->csa.prob.spu_runcntl_RW = val;
 if (val & SPU_RUNCNTL_RUNNABLE) {
  ctx->csa.prob.spu_status_R &=
   ~SPU_STATUS_STOPPED_BY_STOP &
   ~SPU_STATUS_STOPPED_BY_HALT &
   ~SPU_STATUS_SINGLE_STEP &
   ~SPU_STATUS_INVALID_INSTR &
   ~SPU_STATUS_INVALID_CH;
  ctx->csa.prob.spu_status_R |= SPU_STATUS_RUNNING;
 } else {
  ctx->csa.prob.spu_status_R &= ~SPU_STATUS_RUNNING;
 }
 spin_unlock(&ctx->csa.register_lock);
}
