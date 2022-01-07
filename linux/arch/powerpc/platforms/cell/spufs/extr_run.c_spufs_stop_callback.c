
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class_1_dar; int class_1_dsisr; int class_0_dar; int class_0_pending; } ;
struct spu_context {int stop_wq; TYPE_1__ csa; } ;
struct spu {int class_1_dar; int class_1_dsisr; int class_0_dar; int class_0_pending; struct spu_context* ctx; } ;


 int smp_wmb () ;
 int wake_up_all (int *) ;

void spufs_stop_callback(struct spu *spu, int irq)
{
 struct spu_context *ctx = spu->ctx;
 if (ctx) {

  switch(irq) {
  case 0 :
   ctx->csa.class_0_pending = spu->class_0_pending;
   ctx->csa.class_0_dar = spu->class_0_dar;
   break;
  case 1 :
   ctx->csa.class_1_dsisr = spu->class_1_dsisr;
   ctx->csa.class_1_dar = spu->class_1_dar;
   break;
  case 2 :
   break;
  }



  smp_wmb();

  wake_up_all(&ctx->stop_wq);
 }
}
