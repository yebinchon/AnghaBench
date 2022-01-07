
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesgcm_context_t {int gcm; } ;
typedef int ptls_aead_context_t ;


 int cf_gcm_encrypt_update (int *,void const*,size_t,void*) ;

__attribute__((used)) static inline size_t aesgcm_encrypt_update(ptls_aead_context_t *_ctx, void *output, const void *input, size_t inlen)
{
    struct aesgcm_context_t *ctx = (struct aesgcm_context_t *)_ctx;

    cf_gcm_encrypt_update(&ctx->gcm, input, inlen, output);
    return inlen;
}
