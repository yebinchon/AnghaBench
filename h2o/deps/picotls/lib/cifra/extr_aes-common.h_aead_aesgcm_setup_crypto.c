
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * do_decrypt; int * do_encrypt_final; int * do_encrypt_update; int * do_encrypt_init; int dispose_crypto; } ;
struct aesgcm_context_t {int aes; TYPE_1__ super; } ;
typedef int ptls_aead_context_t ;


 int * aesgcm_decrypt ;
 int aesgcm_dispose_crypto ;
 int * aesgcm_encrypt_final ;
 int * aesgcm_encrypt_init ;
 int * aesgcm_encrypt_update ;
 int cf_aes_init (int *,void const*,size_t) ;

__attribute__((used)) static inline int aead_aesgcm_setup_crypto(ptls_aead_context_t *_ctx, int is_enc, const void *key, size_t key_size)
{
    struct aesgcm_context_t *ctx = (struct aesgcm_context_t *)_ctx;

    ctx->super.dispose_crypto = aesgcm_dispose_crypto;
    if (is_enc) {
        ctx->super.do_encrypt_init = aesgcm_encrypt_init;
        ctx->super.do_encrypt_update = aesgcm_encrypt_update;
        ctx->super.do_encrypt_final = aesgcm_encrypt_final;
        ctx->super.do_decrypt = ((void*)0);
    } else {
        ctx->super.do_encrypt_init = ((void*)0);
        ctx->super.do_encrypt_update = ((void*)0);
        ctx->super.do_encrypt_final = ((void*)0);
        ctx->super.do_decrypt = aesgcm_decrypt;
    }

    cf_aes_init(&ctx->aes, key, key_size);
    return 0;
}
