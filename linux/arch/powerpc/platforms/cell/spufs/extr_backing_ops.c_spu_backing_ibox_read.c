
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int int_mask_class2_RW; } ;
struct TYPE_6__ {int mb_stat_R; } ;
struct TYPE_5__ {int puint_mb_R; } ;
struct TYPE_8__ {int* spu_chnlcnt_RW; int register_lock; TYPE_3__ priv1; TYPE_2__ prob; TYPE_1__ priv2; } ;
struct spu_context {TYPE_4__ csa; } ;


 int CLASS2_ENABLE_MAILBOX_INTR ;
 int MFC_PU_INT_MAILBOX_AVAILABLE_EVENT ;
 int gen_spu_event (struct spu_context*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int spu_backing_ibox_read(struct spu_context *ctx, u32 * data)
{
 int ret;

 spin_lock(&ctx->csa.register_lock);
 if (ctx->csa.prob.mb_stat_R & 0xff0000) {




  *data = ctx->csa.priv2.puint_mb_R;
  ctx->csa.prob.mb_stat_R &= ~(0xff0000);
  ctx->csa.spu_chnlcnt_RW[30] = 1;
  gen_spu_event(ctx, MFC_PU_INT_MAILBOX_AVAILABLE_EVENT);
  ret = 4;
 } else {

  ctx->csa.priv1.int_mask_class2_RW |= CLASS2_ENABLE_MAILBOX_INTR;
  ret = 0;
 }
 spin_unlock(&ctx->csa.register_lock);
 return ret;
}
