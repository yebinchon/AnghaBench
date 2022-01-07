
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct crypto_aes_ctx {int key_enc; } ;
struct aesbs_ctx {int rounds; int rk; } ;


 int aes_expandkey (struct crypto_aes_ctx*,int const*,unsigned int) ;
 int aesbs_convert_key (int ,int ,int) ;
 struct aesbs_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;

__attribute__((used)) static int aesbs_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
   unsigned int key_len)
{
 struct aesbs_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct crypto_aes_ctx rk;
 int err;

 err = aes_expandkey(&rk, in_key, key_len);
 if (err)
  return err;

 ctx->rounds = 6 + key_len / 4;

 kernel_neon_begin();
 aesbs_convert_key(ctx->rk, rk.key_enc, ctx->rounds);
 kernel_neon_end();

 return 0;
}
