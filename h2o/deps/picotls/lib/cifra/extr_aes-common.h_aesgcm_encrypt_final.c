
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesgcm_context_t {int gcm; } ;
typedef int ptls_aead_context_t ;


 size_t PTLS_AESGCM_TAG_SIZE ;
 int cf_gcm_encrypt_final (int *,void*,size_t) ;

__attribute__((used)) static inline size_t aesgcm_encrypt_final(ptls_aead_context_t *_ctx, void *output)
{
    struct aesgcm_context_t *ctx = (struct aesgcm_context_t *)_ctx;

    cf_gcm_encrypt_final(&ctx->gcm, output, PTLS_AESGCM_TAG_SIZE);
    return PTLS_AESGCM_TAG_SIZE;
}
