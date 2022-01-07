
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_ctx_simple {int cipher; } ;
struct crypto_skcipher {int dummy; } ;


 int crypto_free_cipher (int ) ;
 struct skcipher_ctx_simple* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void skcipher_exit_tfm_simple(struct crypto_skcipher *tfm)
{
 struct skcipher_ctx_simple *ctx = crypto_skcipher_ctx(tfm);

 crypto_free_cipher(ctx->cipher);
}
