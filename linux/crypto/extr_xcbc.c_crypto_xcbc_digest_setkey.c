
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct xcbc_tfm_ctx {int child; int * ctx; } ;
struct crypto_shash {int dummy; } ;
typedef int key1 ;


 int const* PTR_ALIGN (int *,unsigned long) ;
 int XCBC_BLOCKSIZE ;
 int crypto_cipher_encrypt_one (int ,int const*,int const*) ;
 int crypto_cipher_setkey (int ,int const*,int) ;
 unsigned long crypto_shash_alignmask (struct crypto_shash*) ;
 struct xcbc_tfm_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 scalar_t__ ks ;

__attribute__((used)) static int crypto_xcbc_digest_setkey(struct crypto_shash *parent,
         const u8 *inkey, unsigned int keylen)
{
 unsigned long alignmask = crypto_shash_alignmask(parent);
 struct xcbc_tfm_ctx *ctx = crypto_shash_ctx(parent);
 u8 *consts = PTR_ALIGN(&ctx->ctx[0], alignmask + 1);
 int err = 0;
 u8 key1[XCBC_BLOCKSIZE];
 int bs = sizeof(key1);

 if ((err = crypto_cipher_setkey(ctx->child, inkey, keylen)))
  return err;

 crypto_cipher_encrypt_one(ctx->child, consts, (u8 *)ks + bs);
 crypto_cipher_encrypt_one(ctx->child, consts + bs, (u8 *)ks + bs * 2);
 crypto_cipher_encrypt_one(ctx->child, key1, (u8 *)ks);

 return crypto_cipher_setkey(ctx->child, key1, bs);

}
