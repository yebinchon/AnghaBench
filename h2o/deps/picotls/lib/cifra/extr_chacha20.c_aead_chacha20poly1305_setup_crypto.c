
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * do_decrypt; int * do_encrypt_final; int * do_encrypt_update; int * do_encrypt_init; int dispose_crypto; } ;
struct chacha20poly1305_context_t {int key; TYPE_1__ super; } ;
typedef int ptls_aead_context_t ;


 int * chacha20poly1305_decrypt ;
 int chacha20poly1305_dispose_crypto ;
 int * chacha20poly1305_encrypt_final ;
 int * chacha20poly1305_encrypt_update ;
 int * chacha20poly1305_init ;
 int memcpy (int ,void const*,int) ;

__attribute__((used)) static int aead_chacha20poly1305_setup_crypto(ptls_aead_context_t *_ctx, int is_enc, const void *key)
{
    struct chacha20poly1305_context_t *ctx = (struct chacha20poly1305_context_t *)_ctx;

    ctx->super.dispose_crypto = chacha20poly1305_dispose_crypto;
    if (is_enc) {
        ctx->super.do_encrypt_init = chacha20poly1305_init;
        ctx->super.do_encrypt_update = chacha20poly1305_encrypt_update;
        ctx->super.do_encrypt_final = chacha20poly1305_encrypt_final;
        ctx->super.do_decrypt = ((void*)0);
    } else {
        ctx->super.do_encrypt_init = ((void*)0);
        ctx->super.do_encrypt_update = ((void*)0);
        ctx->super.do_encrypt_final = ((void*)0);
        ctx->super.do_decrypt = chacha20poly1305_decrypt;
    }

    memcpy(ctx->key, key, sizeof(ctx->key));
    return 0;
}
