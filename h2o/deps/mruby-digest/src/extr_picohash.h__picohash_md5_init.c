
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int a; int b; int c; int d; scalar_t__ hi; scalar_t__ lo; } ;
typedef TYPE_1__ _picohash_md5_ctx_t ;



inline void _picohash_md5_init(_picohash_md5_ctx_t *ctx)
{
    ctx->a = 0x67452301;
    ctx->b = 0xefcdab89;
    ctx->c = 0x98badcfe;
    ctx->d = 0x10325476;

    ctx->lo = 0;
    ctx->hi = 0;
}
