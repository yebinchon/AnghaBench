
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int key_enc; } ;
struct TYPE_2__ {int rounds; int rk; } ;
struct aesbs_cbc_ctx {int enc_tfm; TYPE_1__ key; } ;


 int aes_expandkey (struct crypto_aes_ctx*,int const*,unsigned int) ;
 int aesbs_convert_key (int ,int ,int) ;
 int crypto_cipher_setkey (int ,int const*,unsigned int) ;
 struct aesbs_cbc_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;

__attribute__((used)) static int aesbs_cbc_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
       unsigned int key_len)
{
 struct aesbs_cbc_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct crypto_aes_ctx rk;
 int err;

 err = aes_expandkey(&rk, in_key, key_len);
 if (err)
  return err;

 ctx->key.rounds = 6 + key_len / 4;

 kernel_neon_begin();
 aesbs_convert_key(ctx->key.rk, rk.key_enc, ctx->key.rounds);
 kernel_neon_end();

 return crypto_cipher_setkey(ctx->enc_tfm, in_key, key_len);
}
