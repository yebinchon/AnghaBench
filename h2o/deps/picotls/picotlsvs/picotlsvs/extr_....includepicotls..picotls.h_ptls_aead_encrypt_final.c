
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t (* do_encrypt_final ) (TYPE_1__*,void*) ;} ;
typedef TYPE_1__ ptls_aead_context_t ;


 size_t stub1 (TYPE_1__*,void*) ;

inline size_t ptls_aead_encrypt_final(ptls_aead_context_t *ctx, void *output)
{
    return ctx->do_encrypt_final(ctx, output);
}
