
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct poly1305_desc_ctx {int r; int h; int sset; } ;


 unsigned int POLY1305_BLOCK_SIZE ;
 unsigned int crypto_poly1305_setdesckey (struct poly1305_desc_ctx*,int const*,unsigned int) ;
 int poly1305_blocks_internal (int *,int *,int const*,unsigned int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void poly1305_blocks(struct poly1305_desc_ctx *dctx,
       const u8 *src, unsigned int srclen, u32 hibit)
{
 unsigned int datalen;

 if (unlikely(!dctx->sset)) {
  datalen = crypto_poly1305_setdesckey(dctx, src, srclen);
  src += srclen - datalen;
  srclen = datalen;
 }

 poly1305_blocks_internal(&dctx->h, &dctx->r,
     src, srclen / POLY1305_BLOCK_SIZE, hibit);
}
