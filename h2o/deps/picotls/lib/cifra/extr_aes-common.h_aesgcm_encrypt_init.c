
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesgcm_context_t {int gcm; int aes; } ;
typedef int ptls_aead_context_t ;


 int PTLS_AESGCM_IV_SIZE ;
 int cf_aes ;
 int cf_gcm_encrypt_init (int *,int *,int *,void const*,size_t,void const*,int ) ;

__attribute__((used)) static inline void aesgcm_encrypt_init(ptls_aead_context_t *_ctx, const void *iv, const void *aad, size_t aadlen)
{
    struct aesgcm_context_t *ctx = (struct aesgcm_context_t *)_ctx;

    cf_gcm_encrypt_init(&cf_aes, &ctx->aes, &ctx->gcm, aad, aadlen, iv, PTLS_AESGCM_IV_SIZE);
}
