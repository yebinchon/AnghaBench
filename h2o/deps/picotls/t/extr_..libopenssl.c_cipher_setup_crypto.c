
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* do_transform ) (int *,void*,void const*,size_t) ;int do_init; int do_dispose; } ;
struct cipher_context_t {int * evp; TYPE_1__ super; } ;
typedef int ptls_cipher_context_t ;
typedef int EVP_CIPHER ;


 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_padding (int *,int ) ;
 int EVP_DecryptInit_ex (int *,int const*,int *,void const*,int *) ;
 int EVP_EncryptInit_ex (int *,int const*,int *,void const*,int *) ;
 int PTLS_ERROR_LIBRARY ;
 int PTLS_ERROR_NO_MEMORY ;
 int cipher_dispose ;
 int cipher_do_init ;

__attribute__((used)) static int cipher_setup_crypto(ptls_cipher_context_t *_ctx, int is_enc, const void *key, const EVP_CIPHER *cipher,
                               void (*do_transform)(ptls_cipher_context_t *, void *, const void *, size_t))
{
    struct cipher_context_t *ctx = (struct cipher_context_t *)_ctx;

    ctx->super.do_dispose = cipher_dispose;
    ctx->super.do_init = cipher_do_init;
    ctx->super.do_transform = do_transform;

    if ((ctx->evp = EVP_CIPHER_CTX_new()) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;

    if (is_enc) {
        if (!EVP_EncryptInit_ex(ctx->evp, cipher, ((void*)0), key, ((void*)0)))
            goto Error;
    } else {
        if (!EVP_DecryptInit_ex(ctx->evp, cipher, ((void*)0), key, ((void*)0)))
            goto Error;
        EVP_CIPHER_CTX_set_padding(ctx->evp, 0);
    }

    return 0;
Error:
    EVP_CIPHER_CTX_free(ctx->evp);
    return PTLS_ERROR_LIBRARY;
}
