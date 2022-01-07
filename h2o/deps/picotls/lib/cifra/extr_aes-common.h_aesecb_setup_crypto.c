
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_transform; int * do_init; int do_dispose; } ;
struct aesecb_context_t {int aes; TYPE_1__ super; } ;
typedef int ptls_cipher_context_t ;


 int aesecb_decrypt ;
 int aesecb_dispose ;
 int aesecb_encrypt ;
 int cf_aes_init (int *,void const*,size_t) ;

__attribute__((used)) static inline int aesecb_setup_crypto(ptls_cipher_context_t *_ctx, int is_enc, const void *key, size_t key_size)
{
    struct aesecb_context_t *ctx = (struct aesecb_context_t *)_ctx;
    ctx->super.do_dispose = aesecb_dispose;
    ctx->super.do_init = ((void*)0);
    ctx->super.do_transform = is_enc ? aesecb_encrypt : aesecb_decrypt;
    cf_aes_init(&ctx->aes, key, key_size);
    return 0;
}
