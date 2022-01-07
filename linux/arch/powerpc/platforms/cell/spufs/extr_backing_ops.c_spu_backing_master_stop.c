
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int mfc_sr1_RW; } ;
struct spu_state {int register_lock; TYPE_1__ priv1; } ;
struct spu_context {struct spu_state csa; } ;


 int MFC_STATE1_MASTER_RUN_CONTROL_MASK ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void spu_backing_master_stop(struct spu_context *ctx)
{
 struct spu_state *csa = &ctx->csa;
 u64 sr1;

 spin_lock(&csa->register_lock);
 sr1 = csa->priv1.mfc_sr1_RW & ~MFC_STATE1_MASTER_RUN_CONTROL_MASK;
 csa->priv1.mfc_sr1_RW = sr1;
 spin_unlock(&csa->register_lock);
}
