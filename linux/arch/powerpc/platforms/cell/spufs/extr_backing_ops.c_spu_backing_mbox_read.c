
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mb_stat_R; int pu_mb_R; } ;
struct TYPE_3__ {int* spu_chnlcnt_RW; int register_lock; TYPE_2__ prob; } ;
struct spu_context {TYPE_1__ csa; } ;


 int MFC_PU_MAILBOX_AVAILABLE_EVENT ;
 int gen_spu_event (struct spu_context*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int spu_backing_mbox_read(struct spu_context *ctx, u32 * data)
{
 u32 mbox_stat;
 int ret = 0;

 spin_lock(&ctx->csa.register_lock);
 mbox_stat = ctx->csa.prob.mb_stat_R;
 if (mbox_stat & 0x0000ff) {




  *data = ctx->csa.prob.pu_mb_R;
  ctx->csa.prob.mb_stat_R &= ~(0x0000ff);
  ctx->csa.spu_chnlcnt_RW[28] = 1;
  gen_spu_event(ctx, MFC_PU_MAILBOX_AVAILABLE_EVENT);
  ret = 4;
 }
 spin_unlock(&ctx->csa.register_lock);
 return ret;
}
