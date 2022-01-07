
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct shash_desc {int dummy; } ;
struct poly1305_desc_ctx {int buflen; int* buf; int* s; int h; int sset; } ;
typedef int __le32 ;


 int ENOKEY ;
 scalar_t__ POLY1305_BLOCK_SIZE ;
 int le32_to_cpu (int ) ;
 int memset (int*,int ,scalar_t__) ;
 int poly1305_blocks (struct poly1305_desc_ctx*,int*,scalar_t__,int ) ;
 int poly1305_core_emit (int *,int *) ;
 int put_unaligned_le32 (int,int *) ;
 struct poly1305_desc_ctx* shash_desc_ctx (struct shash_desc*) ;
 scalar_t__ unlikely (int) ;

int crypto_poly1305_final(struct shash_desc *desc, u8 *dst)
{
 struct poly1305_desc_ctx *dctx = shash_desc_ctx(desc);
 __le32 digest[4];
 u64 f = 0;

 if (unlikely(!dctx->sset))
  return -ENOKEY;

 if (unlikely(dctx->buflen)) {
  dctx->buf[dctx->buflen++] = 1;
  memset(dctx->buf + dctx->buflen, 0,
         POLY1305_BLOCK_SIZE - dctx->buflen);
  poly1305_blocks(dctx, dctx->buf, POLY1305_BLOCK_SIZE, 0);
 }

 poly1305_core_emit(&dctx->h, digest);


 f = (f >> 32) + le32_to_cpu(digest[0]) + dctx->s[0];
 put_unaligned_le32(f, dst + 0);
 f = (f >> 32) + le32_to_cpu(digest[1]) + dctx->s[1];
 put_unaligned_le32(f, dst + 4);
 f = (f >> 32) + le32_to_cpu(digest[2]) + dctx->s[2];
 put_unaligned_le32(f, dst + 8);
 f = (f >> 32) + le32_to_cpu(digest[3]) + dctx->s[3];
 put_unaligned_le32(f, dst + 12);

 return 0;
}
