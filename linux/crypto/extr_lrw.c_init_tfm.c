
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_instance {int dummy; } ;
struct rctx {int dummy; } ;
struct priv {struct crypto_skcipher* child; } ;
struct crypto_skcipher_spawn {int dummy; } ;
struct crypto_skcipher {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_skcipher*) ;
 int PTR_ERR (struct crypto_skcipher*) ;
 struct priv* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 scalar_t__ crypto_skcipher_reqsize (struct crypto_skcipher*) ;
 int crypto_skcipher_set_reqsize (struct crypto_skcipher*,scalar_t__) ;
 struct crypto_skcipher* crypto_spawn_skcipher (struct crypto_skcipher_spawn*) ;
 struct skcipher_instance* skcipher_alg_instance (struct crypto_skcipher*) ;
 struct crypto_skcipher_spawn* skcipher_instance_ctx (struct skcipher_instance*) ;

__attribute__((used)) static int init_tfm(struct crypto_skcipher *tfm)
{
 struct skcipher_instance *inst = skcipher_alg_instance(tfm);
 struct crypto_skcipher_spawn *spawn = skcipher_instance_ctx(inst);
 struct priv *ctx = crypto_skcipher_ctx(tfm);
 struct crypto_skcipher *cipher;

 cipher = crypto_spawn_skcipher(spawn);
 if (IS_ERR(cipher))
  return PTR_ERR(cipher);

 ctx->child = cipher;

 crypto_skcipher_set_reqsize(tfm, crypto_skcipher_reqsize(cipher) +
      sizeof(struct rctx));

 return 0;
}
