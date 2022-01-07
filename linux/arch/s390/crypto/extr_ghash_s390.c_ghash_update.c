
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct shash_desc {int dummy; } ;
struct ghash_desc_ctx {int bytes; int const* buffer; } ;


 int CPACF_KIMD_GHASH ;
 int GHASH_BLOCK_SIZE ;
 int cpacf_kimd (int ,struct ghash_desc_ctx*,int const*,unsigned int) ;
 int memcpy (int const*,int const*,unsigned int) ;
 unsigned int min (unsigned int,int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_update(struct shash_desc *desc,
    const u8 *src, unsigned int srclen)
{
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);
 unsigned int n;
 u8 *buf = dctx->buffer;

 if (dctx->bytes) {
  u8 *pos = buf + (GHASH_BLOCK_SIZE - dctx->bytes);

  n = min(srclen, dctx->bytes);
  dctx->bytes -= n;
  srclen -= n;

  memcpy(pos, src, n);
  src += n;

  if (!dctx->bytes) {
   cpacf_kimd(CPACF_KIMD_GHASH, dctx, buf,
       GHASH_BLOCK_SIZE);
  }
 }

 n = srclen & ~(GHASH_BLOCK_SIZE - 1);
 if (n) {
  cpacf_kimd(CPACF_KIMD_GHASH, dctx, src, n);
  src += n;
  srclen -= n;
 }

 if (srclen) {
  dctx->bytes = GHASH_BLOCK_SIZE - srclen;
  memcpy(buf, src, srclen);
 }

 return 0;
}
