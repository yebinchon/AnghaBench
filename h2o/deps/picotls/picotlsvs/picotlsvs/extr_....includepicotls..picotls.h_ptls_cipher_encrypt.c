
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* do_transform ) (TYPE_1__*,void*,void const*,size_t) ;} ;
typedef TYPE_1__ ptls_cipher_context_t ;


 int stub1 (TYPE_1__*,void*,void const*,size_t) ;

inline void ptls_cipher_encrypt(ptls_cipher_context_t *ctx, void *output, const void *input, size_t len)
{
    ctx->do_transform(ctx, output, input, len);
}
