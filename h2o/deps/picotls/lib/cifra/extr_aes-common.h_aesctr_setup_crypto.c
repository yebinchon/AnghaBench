
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_transform; int do_init; int do_dispose; } ;
struct aesctr_context_t {int aes; TYPE_1__ super; } ;
typedef int ptls_cipher_context_t ;


 int aesctr_dispose ;
 int aesctr_init ;
 int aesctr_transform ;
 int cf_aes_init (int *,void const*,size_t) ;

__attribute__((used)) static inline int aesctr_setup_crypto(ptls_cipher_context_t *_ctx, int is_enc, const void *key, size_t key_size)
{
    struct aesctr_context_t *ctx = (struct aesctr_context_t *)_ctx;
    ctx->super.do_dispose = aesctr_dispose;
    ctx->super.do_init = aesctr_init;
    ctx->super.do_transform = aesctr_transform;
    cf_aes_init(&ctx->aes, key, key_size);
    return 0;
}
