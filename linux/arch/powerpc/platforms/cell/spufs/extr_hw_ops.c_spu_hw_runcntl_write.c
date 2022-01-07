
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct spu_context {TYPE_2__* spu; } ;
struct TYPE_4__ {int register_lock; TYPE_1__* problem; } ;
struct TYPE_3__ {int spu_runcntl_RW; } ;


 int SPU_PRIVCNT_LOAD_REQUEST_ENABLE_MASK ;
 int SPU_RUNCNTL_ISOLATE ;
 int out_be32 (int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int spu_hw_privcntl_write (struct spu_context*,int ) ;

__attribute__((used)) static void spu_hw_runcntl_write(struct spu_context *ctx, u32 val)
{
 spin_lock_irq(&ctx->spu->register_lock);
 if (val & SPU_RUNCNTL_ISOLATE)
  spu_hw_privcntl_write(ctx,
   SPU_PRIVCNT_LOAD_REQUEST_ENABLE_MASK);
 out_be32(&ctx->spu->problem->spu_runcntl_RW, val);
 spin_unlock_irq(&ctx->spu->register_lock);
}
