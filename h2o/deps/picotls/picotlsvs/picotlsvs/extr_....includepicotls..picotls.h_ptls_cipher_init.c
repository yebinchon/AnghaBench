
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* do_init ) (TYPE_1__*,void const*) ;} ;
typedef TYPE_1__ ptls_cipher_context_t ;


 int stub1 (TYPE_1__*,void const*) ;

inline void ptls_cipher_init(ptls_cipher_context_t *ctx, const void *iv)
{
    ctx->do_init(ctx, iv);
}
