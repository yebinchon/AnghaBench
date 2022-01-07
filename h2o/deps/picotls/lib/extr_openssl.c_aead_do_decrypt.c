
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_1__* algo; } ;
struct aead_crypto_context_t {int evp_ctx; TYPE_2__ super; } ;
typedef int ptls_aead_context_t ;
struct TYPE_3__ {size_t tag_size; } ;


 int EVP_CIPHER_CTX_ctrl (int ,int ,int,void*) ;
 int EVP_CTRL_GCM_SET_TAG ;
 int EVP_DecryptFinal_ex (int ,int *,int*) ;
 int EVP_DecryptInit_ex (int ,int *,int *,int *,void const*) ;
 int EVP_DecryptUpdate (int ,int *,int*,void const*,int) ;
 size_t SIZE_MAX ;
 int assert (int) ;

__attribute__((used)) static size_t aead_do_decrypt(ptls_aead_context_t *_ctx, void *_output, const void *input, size_t inlen, const void *iv,
                              const void *aad, size_t aadlen)
{
    struct aead_crypto_context_t *ctx = (struct aead_crypto_context_t *)_ctx;
    uint8_t *output = _output;
    size_t off = 0, tag_size = ctx->super.algo->tag_size;
    int blocklen, ret;

    if (inlen < tag_size)
        return SIZE_MAX;

    ret = EVP_DecryptInit_ex(ctx->evp_ctx, ((void*)0), ((void*)0), ((void*)0), iv);
    assert(ret);
    if (aadlen != 0) {
        ret = EVP_DecryptUpdate(ctx->evp_ctx, ((void*)0), &blocklen, aad, (int)aadlen);
        assert(ret);
    }
    ret = EVP_DecryptUpdate(ctx->evp_ctx, output + off, &blocklen, input, (int)(inlen - tag_size));
    assert(ret);
    off += blocklen;
    if (!EVP_CIPHER_CTX_ctrl(ctx->evp_ctx, EVP_CTRL_GCM_SET_TAG, (int)tag_size, (void *)((uint8_t *)input + inlen - tag_size)))
        return SIZE_MAX;
    if (!EVP_DecryptFinal_ex(ctx->evp_ctx, output + off, &blocklen))
        return SIZE_MAX;
    off += blocklen;

    return off;
}
