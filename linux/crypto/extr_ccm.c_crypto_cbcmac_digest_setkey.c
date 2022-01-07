
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_shash {int dummy; } ;
struct cbcmac_tfm_ctx {int child; } ;


 int crypto_cipher_setkey (int ,int const*,unsigned int) ;
 struct cbcmac_tfm_ctx* crypto_shash_ctx (struct crypto_shash*) ;

__attribute__((used)) static int crypto_cbcmac_digest_setkey(struct crypto_shash *parent,
         const u8 *inkey, unsigned int keylen)
{
 struct cbcmac_tfm_ctx *ctx = crypto_shash_ctx(parent);

 return crypto_cipher_setkey(ctx->child, inkey, keylen);
}
