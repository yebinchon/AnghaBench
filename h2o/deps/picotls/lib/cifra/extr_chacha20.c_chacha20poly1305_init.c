
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tmpbuf ;
struct chacha20poly1305_context_t {size_t aadlen; scalar_t__ textlen; int poly; int chacha; int key; } ;
typedef int ptls_aead_context_t ;


 int PTLS_CHACHA20POLY1305_IV_SIZE ;
 int cf_chacha20_cipher (int *,int ,int *,int) ;
 int cf_chacha20_init_custom (int *,int ,int,int *,int) ;
 int cf_poly1305_init (int *,int *,int *) ;
 int cf_poly1305_update (int *,void const*,size_t) ;
 int chacha20poly1305_encrypt_pad (int *,size_t) ;
 int memcpy (int *,void const*,int) ;
 int memset (int *,int ,int) ;
 int ptls_clear_memory (int *,int) ;
 int zeros64 ;

__attribute__((used)) static void chacha20poly1305_init(ptls_aead_context_t *_ctx, const void *iv, const void *aad, size_t aadlen)
{
    struct chacha20poly1305_context_t *ctx = (struct chacha20poly1305_context_t *)_ctx;
    uint8_t tmpbuf[64];


    memset(tmpbuf, 0, 16 - PTLS_CHACHA20POLY1305_IV_SIZE);
    memcpy(tmpbuf + 16 - PTLS_CHACHA20POLY1305_IV_SIZE, iv, PTLS_CHACHA20POLY1305_IV_SIZE);
    cf_chacha20_init_custom(&ctx->chacha, ctx->key, sizeof(ctx->key), tmpbuf, 4);


    cf_chacha20_cipher(&ctx->chacha, zeros64, tmpbuf, 64);
    cf_poly1305_init(&ctx->poly, tmpbuf, tmpbuf + 16);

    ptls_clear_memory(tmpbuf, sizeof(tmpbuf));


    if (aadlen != 0) {
        cf_poly1305_update(&ctx->poly, aad, aadlen);
        chacha20poly1305_encrypt_pad(&ctx->poly, aadlen);
    }

    ctx->aadlen = aadlen;
    ctx->textlen = 0;
}
