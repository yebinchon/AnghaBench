
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* algo; int static_iv; int (* dispose_crypto ) (TYPE_2__*) ;} ;
typedef TYPE_2__ ptls_aead_context_t ;
struct TYPE_6__ {int iv_size; } ;


 int free (TYPE_2__*) ;
 int ptls_clear_memory (int ,int ) ;
 int stub1 (TYPE_2__*) ;

void ptls_aead_free(ptls_aead_context_t *ctx)
{
    ctx->dispose_crypto(ctx);
    ptls_clear_memory(ctx->static_iv, ctx->algo->iv_size);
    free(ctx);
}
