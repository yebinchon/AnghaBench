
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chacha20poly1305_context_t {size_t textlen; int poly; int chacha; } ;
typedef int ptls_aead_context_t ;


 int cf_chacha20_cipher (int *,void const*,void*,size_t) ;
 int cf_poly1305_update (int *,void*,size_t) ;

__attribute__((used)) static size_t chacha20poly1305_encrypt_update(ptls_aead_context_t *_ctx, void *output, const void *input, size_t inlen)
{
    struct chacha20poly1305_context_t *ctx = (struct chacha20poly1305_context_t *)_ctx;

    cf_chacha20_cipher(&ctx->chacha, input, output, inlen);
    cf_poly1305_update(&ctx->poly, output, inlen);
    ctx->textlen += inlen;

    return inlen;
}
