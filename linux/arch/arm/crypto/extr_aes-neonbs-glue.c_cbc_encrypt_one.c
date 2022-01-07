
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct aesbs_cbc_ctx {int enc_tfm; } ;


 int crypto_cipher_encrypt_one (int ,int *,int const*) ;
 struct aesbs_cbc_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void cbc_encrypt_one(struct crypto_skcipher *tfm, const u8 *src, u8 *dst)
{
 struct aesbs_cbc_ctx *ctx = crypto_skcipher_ctx(tfm);

 crypto_cipher_encrypt_one(ctx->enc_tfm, dst, src);
}
