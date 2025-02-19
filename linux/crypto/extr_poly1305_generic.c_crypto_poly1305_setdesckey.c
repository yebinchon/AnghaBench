
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct poly1305_desc_ctx {int sset; int rset; void** s; int r; } ;


 unsigned int POLY1305_BLOCK_SIZE ;
 void* get_unaligned_le32 (int const*) ;
 int poly1305_core_setkey (int *,int const*) ;

unsigned int crypto_poly1305_setdesckey(struct poly1305_desc_ctx *dctx,
     const u8 *src, unsigned int srclen)
{
 if (!dctx->sset) {
  if (!dctx->rset && srclen >= POLY1305_BLOCK_SIZE) {
   poly1305_core_setkey(&dctx->r, src);
   src += POLY1305_BLOCK_SIZE;
   srclen -= POLY1305_BLOCK_SIZE;
   dctx->rset = 1;
  }
  if (srclen >= POLY1305_BLOCK_SIZE) {
   dctx->s[0] = get_unaligned_le32(src + 0);
   dctx->s[1] = get_unaligned_le32(src + 4);
   dctx->s[2] = get_unaligned_le32(src + 8);
   dctx->s[3] = get_unaligned_le32(src + 12);
   src += POLY1305_BLOCK_SIZE;
   srclen -= POLY1305_BLOCK_SIZE;
   dctx->sset = 1;
  }
 }
 return srclen;
}
