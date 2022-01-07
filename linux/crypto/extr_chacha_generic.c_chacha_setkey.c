
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_skcipher {int dummy; } ;
struct chacha_ctx {int nrounds; int * key; } ;


 int ARRAY_SIZE (int *) ;
 unsigned int CHACHA_KEY_SIZE ;
 int EINVAL ;
 struct chacha_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int get_unaligned_le32 (int const*) ;

__attribute__((used)) static int chacha_setkey(struct crypto_skcipher *tfm, const u8 *key,
    unsigned int keysize, int nrounds)
{
 struct chacha_ctx *ctx = crypto_skcipher_ctx(tfm);
 int i;

 if (keysize != CHACHA_KEY_SIZE)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(ctx->key); i++)
  ctx->key[i] = get_unaligned_le32(key + i * sizeof(u32));

 ctx->nrounds = nrounds;
 return 0;
}
