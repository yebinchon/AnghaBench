
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* do_dispose ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ptls_cipher_context_t ;


 int free (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void ptls_cipher_free(ptls_cipher_context_t *ctx)
{
    ctx->do_dispose(ctx);
    free(ctx);
}
