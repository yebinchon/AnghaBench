
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_crypto_context_t {int * evp_ctx; } ;
typedef int ptls_aead_context_t ;


 int EVP_CIPHER_CTX_free (int *) ;

__attribute__((used)) static void aead_dispose_crypto(ptls_aead_context_t *_ctx)
{
    struct aead_crypto_context_t *ctx = (struct aead_crypto_context_t *)_ctx;

    if (ctx->evp_ctx != ((void*)0))
        EVP_CIPHER_CTX_free(ctx->evp_ctx);
}
