
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesctr_context_t {int dummy; } ;
typedef int ptls_cipher_context_t ;


 int ptls_clear_memory (struct aesctr_context_t*,int) ;

__attribute__((used)) static inline void aesctr_dispose(ptls_cipher_context_t *_ctx)
{
    struct aesctr_context_t *ctx = (struct aesctr_context_t *)_ctx;
    ptls_clear_memory(ctx, sizeof(*ctx));
}
