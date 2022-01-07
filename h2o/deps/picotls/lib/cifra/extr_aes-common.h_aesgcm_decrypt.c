
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct aesgcm_context_t {int aes; } ;
typedef int ptls_aead_context_t ;


 int PTLS_AESGCM_IV_SIZE ;
 size_t PTLS_AESGCM_TAG_SIZE ;
 size_t SIZE_MAX ;
 int cf_aes ;
 scalar_t__ cf_gcm_decrypt (int *,int *,void const*,size_t,void const*,size_t,void const*,int ,int *,size_t,void*) ;

__attribute__((used)) static inline size_t aesgcm_decrypt(ptls_aead_context_t *_ctx, void *output, const void *input, size_t inlen, const void *iv,
                             const void *aad, size_t aadlen)
{
    struct aesgcm_context_t *ctx = (struct aesgcm_context_t *)_ctx;

    if (inlen < PTLS_AESGCM_TAG_SIZE)
        return SIZE_MAX;
    size_t tag_offset = inlen - PTLS_AESGCM_TAG_SIZE;

    if (cf_gcm_decrypt(&cf_aes, &ctx->aes, input, tag_offset, aad, aadlen, iv, PTLS_AESGCM_IV_SIZE, (uint8_t *)input + tag_offset,
                       PTLS_AESGCM_TAG_SIZE, output) != 0)
        return SIZE_MAX;

    return tag_offset;
}
