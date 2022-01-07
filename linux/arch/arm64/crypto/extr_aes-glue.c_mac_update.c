
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int tfm; } ;
struct mac_tfm_ctx {int key; } ;
struct mac_desc_ctx {unsigned int len; scalar_t__ dg; } ;


 unsigned int AES_BLOCK_SIZE ;
 struct mac_tfm_ctx* crypto_shash_ctx (int ) ;
 int crypto_xor (scalar_t__,int const*,unsigned int) ;
 int mac_do_update (int *,int const*,int,scalar_t__,int,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 struct mac_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int mac_update(struct shash_desc *desc, const u8 *p, unsigned int len)
{
 struct mac_tfm_ctx *tctx = crypto_shash_ctx(desc->tfm);
 struct mac_desc_ctx *ctx = shash_desc_ctx(desc);

 while (len > 0) {
  unsigned int l;

  if ((ctx->len % AES_BLOCK_SIZE) == 0 &&
      (ctx->len + len) > AES_BLOCK_SIZE) {

   int blocks = len / AES_BLOCK_SIZE;

   len %= AES_BLOCK_SIZE;

   mac_do_update(&tctx->key, p, blocks, ctx->dg,
          (ctx->len != 0), (len != 0));

   p += blocks * AES_BLOCK_SIZE;

   if (!len) {
    ctx->len = AES_BLOCK_SIZE;
    break;
   }
   ctx->len = 0;
  }

  l = min(len, AES_BLOCK_SIZE - ctx->len);

  if (l <= AES_BLOCK_SIZE) {
   crypto_xor(ctx->dg + ctx->len, p, l);
   ctx->len += l;
   len -= l;
   p += l;
  }
 }

 return 0;
}
