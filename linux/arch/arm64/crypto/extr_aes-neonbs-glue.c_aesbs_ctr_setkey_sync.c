
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {int rounds; int rk; } ;
struct TYPE_4__ {int key_enc; } ;
struct aesbs_ctr_ctx {TYPE_1__ key; TYPE_2__ fallback; } ;


 int aes_expandkey (TYPE_2__*,int const*,unsigned int) ;
 int aesbs_convert_key (int ,int ,int) ;
 struct aesbs_ctr_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;

__attribute__((used)) static int aesbs_ctr_setkey_sync(struct crypto_skcipher *tfm, const u8 *in_key,
     unsigned int key_len)
{
 struct aesbs_ctr_ctx *ctx = crypto_skcipher_ctx(tfm);
 int err;

 err = aes_expandkey(&ctx->fallback, in_key, key_len);
 if (err)
  return err;

 ctx->key.rounds = 6 + key_len / 4;

 kernel_neon_begin();
 aesbs_convert_key(ctx->key.rk, ctx->fallback.key_enc, ctx->key.rounds);
 kernel_neon_end();

 return 0;
}
