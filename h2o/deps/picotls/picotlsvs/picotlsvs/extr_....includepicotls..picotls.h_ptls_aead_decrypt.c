
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_5__ {size_t (* do_decrypt ) (TYPE_1__*,void*,void const*,size_t,int *,void const*,size_t) ;} ;
typedef TYPE_1__ ptls_aead_context_t ;


 int PTLS_MAX_IV_SIZE ;
 int ptls_aead__build_iv (TYPE_1__*,int *,int ) ;
 size_t stub1 (TYPE_1__*,void*,void const*,size_t,int *,void const*,size_t) ;

inline size_t ptls_aead_decrypt(ptls_aead_context_t *ctx, void *output, const void *input, size_t inlen, uint64_t seq,
                                const void *aad, size_t aadlen)
{
    uint8_t iv[PTLS_MAX_IV_SIZE];

    ptls_aead__build_iv(ctx, iv, seq);
    return ctx->do_decrypt(ctx, output, input, inlen, iv, aad, aadlen);
}
