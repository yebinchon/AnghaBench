
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t (* do_encrypt_update ) (TYPE_1__*,void*,void const*,size_t) ;} ;
typedef TYPE_1__ ptls_aead_context_t ;


 size_t stub1 (TYPE_1__*,void*,void const*,size_t) ;

inline size_t ptls_aead_encrypt_update(ptls_aead_context_t *ctx, void *output, const void *input, size_t inlen)
{
    return ctx->do_encrypt_update(ctx, output, input, inlen);
}
