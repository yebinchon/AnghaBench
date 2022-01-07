
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int curlen; unsigned char* buf; int* state; } ;
typedef TYPE_1__ _picohash_sha256_ctx_t ;


 int _picohash_sha256_compress (TYPE_1__*,unsigned char*) ;

__attribute__((used)) static inline void _picohash_sha256_do_final(_picohash_sha256_ctx_t *ctx, void *digest, size_t len)
{
    unsigned char *out = digest;
    size_t i;


    ctx->length += ctx->curlen * 8;


    ctx->buf[ctx->curlen++] = (unsigned char)0x80;





    if (ctx->curlen > 56) {
        while (ctx->curlen < 64) {
            ctx->buf[ctx->curlen++] = (unsigned char)0;
        }
        _picohash_sha256_compress(ctx, ctx->buf);
        ctx->curlen = 0;
    }


    while (ctx->curlen < 56) {
        ctx->buf[ctx->curlen++] = (unsigned char)0;
    }


    for (i = 0; i != 8; ++i)
        ctx->buf[56 + i] = ctx->length >> (56 - 8 * i);
    _picohash_sha256_compress(ctx, ctx->buf);


    for (i = 0; i != len / 4; ++i) {
        out[i * 4] = ctx->state[i] >> 24;
        out[i * 4 + 1] = ctx->state[i] >> 16;
        out[i * 4 + 2] = ctx->state[i] >> 8;
        out[i * 4 + 3] = ctx->state[i];
    }
}
