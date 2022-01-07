
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tag ;
struct chacha20poly1305_context_t {size_t textlen; int poly; int chacha; int super; } ;
typedef int ptls_aead_context_t ;


 int PTLS_CHACHA20POLY1305_TAG_SIZE ;
 size_t SIZE_MAX ;
 int cf_chacha20_cipher (int *,void const*,void*,size_t) ;
 int cf_poly1305_update (int *,void const*,size_t) ;
 int chacha20poly1305_finalize (struct chacha20poly1305_context_t*,int *) ;
 int chacha20poly1305_init (int *,void const*,void const*,size_t) ;
 scalar_t__ mem_eq (int *,int const*,int) ;
 int ptls_clear_memory (int *,int) ;

__attribute__((used)) static size_t chacha20poly1305_decrypt(ptls_aead_context_t *_ctx, void *output, const void *input, size_t inlen, const void *iv,
                                       const void *aad, size_t aadlen)
{
    struct chacha20poly1305_context_t *ctx = (struct chacha20poly1305_context_t *)_ctx;
    uint8_t tag[PTLS_CHACHA20POLY1305_TAG_SIZE];
    size_t ret;

    if (inlen < sizeof(tag))
        return SIZE_MAX;

    chacha20poly1305_init(&ctx->super, iv, aad, aadlen);

    cf_poly1305_update(&ctx->poly, input, inlen - sizeof(tag));
    ctx->textlen = inlen - sizeof(tag);

    chacha20poly1305_finalize(ctx, tag);
    if (mem_eq(tag, (const uint8_t *)input + inlen - sizeof(tag), sizeof(tag))) {
        cf_chacha20_cipher(&ctx->chacha, input, output, inlen - sizeof(tag));
        ret = inlen - sizeof(tag);
    } else {
        ret = SIZE_MAX;
    }

    ptls_clear_memory(tag, sizeof(tag));
    ptls_clear_memory(&ctx->poly, sizeof(ctx->poly));

    return ret;
}
