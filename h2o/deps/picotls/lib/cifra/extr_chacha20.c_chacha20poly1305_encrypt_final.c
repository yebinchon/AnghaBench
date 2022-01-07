
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chacha20poly1305_context_t {int chacha; } ;
typedef int ptls_aead_context_t ;


 size_t PTLS_CHACHA20POLY1305_TAG_SIZE ;
 int chacha20poly1305_finalize (struct chacha20poly1305_context_t*,void*) ;
 int ptls_clear_memory (int *,int) ;

__attribute__((used)) static size_t chacha20poly1305_encrypt_final(ptls_aead_context_t *_ctx, void *output)
{
    struct chacha20poly1305_context_t *ctx = (struct chacha20poly1305_context_t *)_ctx;

    chacha20poly1305_finalize(ctx, output);

    ptls_clear_memory(&ctx->chacha, sizeof(ctx->chacha));
    return PTLS_CHACHA20POLY1305_TAG_SIZE;
}
