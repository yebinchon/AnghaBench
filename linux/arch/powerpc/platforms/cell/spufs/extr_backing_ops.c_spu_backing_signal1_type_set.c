
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int spu_cfg_RW; } ;
struct TYPE_4__ {int register_lock; TYPE_1__ priv2; } ;
struct spu_context {TYPE_2__ csa; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void spu_backing_signal1_type_set(struct spu_context *ctx, u64 val)
{
 u64 tmp;

 spin_lock(&ctx->csa.register_lock);
 tmp = ctx->csa.priv2.spu_cfg_RW;
 if (val)
  tmp |= 1;
 else
  tmp &= ~1;
 ctx->csa.priv2.spu_cfg_RW = tmp;
 spin_unlock(&ctx->csa.register_lock);
}
