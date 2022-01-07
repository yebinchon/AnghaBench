
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* algo; int * do_decrypt; int * do_encrypt_final; int * do_encrypt_update; int * do_encrypt_init; int (* dispose_crypto ) (TYPE_2__*) ;} ;
struct aead_crypto_context_t {TYPE_2__ super; int * evp_ctx; } ;
typedef int ptls_aead_context_t ;
struct TYPE_3__ {scalar_t__ iv_size; } ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_CTX_ctrl (int *,int ,int,int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CTRL_GCM_SET_IVLEN ;
 int EVP_DecryptInit_ex (int *,int const*,int *,void const*,int *) ;
 int EVP_EncryptInit_ex (int *,int const*,int *,void const*,int *) ;
 int PTLS_ERROR_LIBRARY ;
 int PTLS_ERROR_NO_MEMORY ;
 int aead_dispose_crypto (TYPE_2__*) ;
 int * aead_do_decrypt ;
 int * aead_do_encrypt_final ;
 int * aead_do_encrypt_init ;
 int * aead_do_encrypt_update ;

__attribute__((used)) static int aead_setup_crypto(ptls_aead_context_t *_ctx, int is_enc, const void *key, const EVP_CIPHER *cipher)
{
    struct aead_crypto_context_t *ctx = (struct aead_crypto_context_t *)_ctx;
    int ret;

    ctx->super.dispose_crypto = aead_dispose_crypto;
    if (is_enc) {
        ctx->super.do_encrypt_init = aead_do_encrypt_init;
        ctx->super.do_encrypt_update = aead_do_encrypt_update;
        ctx->super.do_encrypt_final = aead_do_encrypt_final;
        ctx->super.do_decrypt = ((void*)0);
    } else {
        ctx->super.do_encrypt_init = ((void*)0);
        ctx->super.do_encrypt_update = ((void*)0);
        ctx->super.do_encrypt_final = ((void*)0);
        ctx->super.do_decrypt = aead_do_decrypt;
    }
    ctx->evp_ctx = ((void*)0);

    if ((ctx->evp_ctx = EVP_CIPHER_CTX_new()) == ((void*)0)) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Error;
    }
    if (is_enc) {
        if (!EVP_EncryptInit_ex(ctx->evp_ctx, cipher, ((void*)0), key, ((void*)0))) {
            ret = PTLS_ERROR_LIBRARY;
            goto Error;
        }
    } else {
        if (!EVP_DecryptInit_ex(ctx->evp_ctx, cipher, ((void*)0), key, ((void*)0))) {
            ret = PTLS_ERROR_LIBRARY;
            goto Error;
        }
    }
    if (!EVP_CIPHER_CTX_ctrl(ctx->evp_ctx, EVP_CTRL_GCM_SET_IVLEN, (int)ctx->super.algo->iv_size, ((void*)0))) {
        ret = PTLS_ERROR_LIBRARY;
        goto Error;
    }

    return 0;

Error:
    aead_dispose_crypto(&ctx->super);
    return ret;
}
