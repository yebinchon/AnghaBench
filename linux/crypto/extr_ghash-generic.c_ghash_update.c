
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct ghash_desc_ctx {int bytes; int * buffer; } ;
struct ghash_ctx {int gf128; } ;
typedef int be128 ;


 int GHASH_BLOCK_SIZE ;
 struct ghash_ctx* crypto_shash_ctx (int ) ;
 int crypto_xor (int *,int const*,int) ;
 int gf128mul_4k_lle (int *,int ) ;
 int min (unsigned int,int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_update(struct shash_desc *desc,
    const u8 *src, unsigned int srclen)
{
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);
 struct ghash_ctx *ctx = crypto_shash_ctx(desc->tfm);
 u8 *dst = dctx->buffer;

 if (dctx->bytes) {
  int n = min(srclen, dctx->bytes);
  u8 *pos = dst + (GHASH_BLOCK_SIZE - dctx->bytes);

  dctx->bytes -= n;
  srclen -= n;

  while (n--)
   *pos++ ^= *src++;

  if (!dctx->bytes)
   gf128mul_4k_lle((be128 *)dst, ctx->gf128);
 }

 while (srclen >= GHASH_BLOCK_SIZE) {
  crypto_xor(dst, src, GHASH_BLOCK_SIZE);
  gf128mul_4k_lle((be128 *)dst, ctx->gf128);
  src += GHASH_BLOCK_SIZE;
  srclen -= GHASH_BLOCK_SIZE;
 }

 if (srclen) {
  dctx->bytes = GHASH_BLOCK_SIZE - srclen;
  while (srclen--)
   *dst++ ^= *src++;
 }

 return 0;
}
