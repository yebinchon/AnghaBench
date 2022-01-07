
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_5__ {int (* do_encrypt_init ) (TYPE_1__*,int *,void const*,size_t) ;} ;
typedef TYPE_1__ ptls_aead_context_t ;


 int PTLS_MAX_IV_SIZE ;
 int ptls_aead__build_iv (TYPE_1__*,int *,int ) ;
 int stub1 (TYPE_1__*,int *,void const*,size_t) ;

inline void ptls_aead_encrypt_init(ptls_aead_context_t *ctx, uint64_t seq, const void *aad, size_t aadlen)
{
    uint8_t iv[PTLS_MAX_IV_SIZE];

    ptls_aead__build_iv(ctx, iv, seq);
    ctx->do_encrypt_init(ctx, iv, aad, aadlen);
}
