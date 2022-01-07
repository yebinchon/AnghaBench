
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesctr_context_t {int aes; int ctr; } ;
typedef int ptls_cipher_context_t ;


 int cf_aes ;
 int cf_ctr_init (int *,int *,int *,void const*) ;

__attribute__((used)) static inline void aesctr_init(ptls_cipher_context_t *_ctx, const void *iv)
{
    struct aesctr_context_t *ctx = (struct aesctr_context_t *)_ctx;
    cf_ctr_init(&ctx->ctr, &cf_aes, &ctx->aes, iv);
}
