
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct xcbc_tfm_ctx {struct crypto_cipher* child; } ;
struct xcbc_desc_ctx {unsigned int len; int * ctx; } ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;
struct crypto_cipher {int dummy; } ;


 int const* PTR_ALIGN (int *,unsigned long) ;
 int crypto_cipher_encrypt_one (struct crypto_cipher*,int const*,int const*) ;
 unsigned long crypto_shash_alignmask (struct crypto_shash*) ;
 int crypto_shash_blocksize (struct crypto_shash*) ;
 struct xcbc_tfm_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_xor (int const*,int const*,int) ;
 int memcpy (int const*,int const*,unsigned int) ;
 struct xcbc_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crypto_xcbc_digest_update(struct shash_desc *pdesc, const u8 *p,
         unsigned int len)
{
 struct crypto_shash *parent = pdesc->tfm;
 unsigned long alignmask = crypto_shash_alignmask(parent);
 struct xcbc_tfm_ctx *tctx = crypto_shash_ctx(parent);
 struct xcbc_desc_ctx *ctx = shash_desc_ctx(pdesc);
 struct crypto_cipher *tfm = tctx->child;
 int bs = crypto_shash_blocksize(parent);
 u8 *odds = PTR_ALIGN(&ctx->ctx[0], alignmask + 1);
 u8 *prev = odds + bs;


 if ((ctx->len + len) <= bs) {
  memcpy(odds + ctx->len, p, len);
  ctx->len += len;
  return 0;
 }


 memcpy(odds + ctx->len, p, bs - ctx->len);
 len -= bs - ctx->len;
 p += bs - ctx->len;

 crypto_xor(prev, odds, bs);
 crypto_cipher_encrypt_one(tfm, prev, prev);


 ctx->len = 0;


 while (len > bs) {
  crypto_xor(prev, p, bs);
  crypto_cipher_encrypt_one(tfm, prev, prev);
  p += bs;
  len -= bs;
 }


 if (len) {
  memcpy(odds, p, len);
  ctx->len = len;
 }

 return 0;
}
