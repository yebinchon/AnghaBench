
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct ghash_desc_ctx {int bytes; int * buffer; } ;
struct ghash_ctx {int shash; } ;


 int GHASH_BLOCK_SIZE ;
 int clmul_ghash_mul (int *,int *) ;
 int clmul_ghash_update (int *,int const*,unsigned int,int *) ;
 struct ghash_ctx* crypto_shash_ctx (int ) ;
 int kernel_fpu_begin () ;
 int kernel_fpu_end () ;
 int min (unsigned int,int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_update(struct shash_desc *desc,
    const u8 *src, unsigned int srclen)
{
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);
 struct ghash_ctx *ctx = crypto_shash_ctx(desc->tfm);
 u8 *dst = dctx->buffer;

 kernel_fpu_begin();
 if (dctx->bytes) {
  int n = min(srclen, dctx->bytes);
  u8 *pos = dst + (GHASH_BLOCK_SIZE - dctx->bytes);

  dctx->bytes -= n;
  srclen -= n;

  while (n--)
   *pos++ ^= *src++;

  if (!dctx->bytes)
   clmul_ghash_mul(dst, &ctx->shash);
 }

 clmul_ghash_update(dst, src, srclen, &ctx->shash);
 kernel_fpu_end();

 if (srclen & 0xf) {
  src += srclen - (srclen & 0xf);
  srclen &= 0xf;
  dctx->bytes = GHASH_BLOCK_SIZE - srclen;
  while (srclen--)
   *dst++ ^= *src++;
 }

 return 0;
}
