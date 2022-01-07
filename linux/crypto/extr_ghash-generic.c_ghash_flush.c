
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_desc_ctx {int bytes; int * buffer; } ;
struct ghash_ctx {int gf128; } ;
typedef int be128 ;


 int GHASH_BLOCK_SIZE ;
 int gf128mul_4k_lle (int *,int ) ;

__attribute__((used)) static void ghash_flush(struct ghash_ctx *ctx, struct ghash_desc_ctx *dctx)
{
 u8 *dst = dctx->buffer;

 if (dctx->bytes) {
  u8 *tmp = dst + (GHASH_BLOCK_SIZE - dctx->bytes);

  while (dctx->bytes--)
   *tmp++ ^= 0;

  gf128mul_4k_lle((be128 *)dst, ctx->gf128);
 }

 dctx->bytes = 0;
}
