
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int counter_width; scalar_t__ counter_offset; scalar_t__ nonce; int prpctx; TYPE_1__* prp; } ;
typedef TYPE_2__ cf_ctr ;
struct TYPE_3__ {int (* encrypt ) (int ,scalar_t__,int *) ;} ;


 int incr_be (scalar_t__,int ) ;
 int stub1 (int ,scalar_t__,int *) ;

__attribute__((used)) static void ctr_next_block(void *vctx, uint8_t *out)
{
  cf_ctr *ctx = vctx;
  ctx->prp->encrypt(ctx->prpctx, ctx->nonce, out);
  incr_be(ctx->nonce + ctx->counter_offset, ctx->counter_width);
}
