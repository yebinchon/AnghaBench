
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct chacha20poly1305_context_t {int poly; int textlen; int aadlen; } ;
typedef int lenbuf ;


 int cf_poly1305_finish (int *,int *) ;
 int cf_poly1305_update (int *,int *,int) ;
 int chacha20poly1305_encrypt_pad (int *,int ) ;
 int write64_le (int ,int *) ;

__attribute__((used)) static void chacha20poly1305_finalize(struct chacha20poly1305_context_t *ctx, uint8_t *tag)
{
    uint8_t lenbuf[16];

    chacha20poly1305_encrypt_pad(&ctx->poly, ctx->textlen);

    write64_le(ctx->aadlen, lenbuf);
    write64_le(ctx->textlen, lenbuf + 8);
    cf_poly1305_update(&ctx->poly, lenbuf, sizeof(lenbuf));

    cf_poly1305_finish(&ctx->poly, tag);
}
