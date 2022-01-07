
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesctr_context_t {int ctr; } ;
typedef int ptls_cipher_context_t ;


 int cf_ctr_cipher (int *,void const*,void*,size_t) ;

__attribute__((used)) static inline void aesctr_transform(ptls_cipher_context_t *_ctx, void *output, const void *input, size_t len)
{
    struct aesctr_context_t *ctx = (struct aesctr_context_t *)_ctx;
    cf_ctr_cipher(&ctx->ctr, input, output, len);
}
