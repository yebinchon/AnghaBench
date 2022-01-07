
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_crypto_context_t {int evp_ctx; } ;
typedef int ptls_aead_context_t ;


 int EVP_EncryptInit_ex (int ,int *,int *,int *,void const*) ;
 int EVP_EncryptUpdate (int ,int *,int*,void const*,int) ;
 int assert (int) ;

__attribute__((used)) static void aead_do_encrypt_init(ptls_aead_context_t *_ctx, const void *iv, const void *aad, size_t aadlen)
{
    struct aead_crypto_context_t *ctx = (struct aead_crypto_context_t *)_ctx;
    int ret;


    ret = EVP_EncryptInit_ex(ctx->evp_ctx, ((void*)0), ((void*)0), ((void*)0), iv);
    assert(ret);

    if (aadlen != 0) {
        int blocklen;
        ret = EVP_EncryptUpdate(ctx->evp_ctx, ((void*)0), &blocklen, aad, (int)aadlen);
        assert(ret);
    }
}
