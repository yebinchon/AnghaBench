
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_instance {int dummy; } ;
struct skcipher_ctx_simple {struct crypto_cipher* cipher; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_cipher*) ;
 int PTR_ERR (struct crypto_cipher*) ;
 struct skcipher_ctx_simple* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_cipher* crypto_spawn_cipher (struct crypto_spawn*) ;
 struct skcipher_instance* skcipher_alg_instance (struct crypto_skcipher*) ;
 struct crypto_spawn* skcipher_instance_ctx (struct skcipher_instance*) ;

__attribute__((used)) static int skcipher_init_tfm_simple(struct crypto_skcipher *tfm)
{
 struct skcipher_instance *inst = skcipher_alg_instance(tfm);
 struct crypto_spawn *spawn = skcipher_instance_ctx(inst);
 struct skcipher_ctx_simple *ctx = crypto_skcipher_ctx(tfm);
 struct crypto_cipher *cipher;

 cipher = crypto_spawn_cipher(spawn);
 if (IS_ERR(cipher))
  return PTR_ERR(cipher);

 ctx->cipher = cipher;
 return 0;
}
