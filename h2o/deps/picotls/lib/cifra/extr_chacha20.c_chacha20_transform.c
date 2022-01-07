
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chacha20_context_t {int chacha; } ;
typedef int ptls_cipher_context_t ;


 int cf_chacha20_cipher (int *,void const*,void*,size_t) ;

__attribute__((used)) static void chacha20_transform(ptls_cipher_context_t *_ctx, void *output, const void *input, size_t len)
{
    struct chacha20_context_t *ctx = (struct chacha20_context_t *)_ctx;
    cf_chacha20_cipher(&ctx->chacha, input, output, len);
}
