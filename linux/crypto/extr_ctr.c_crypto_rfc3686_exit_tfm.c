
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int dummy; } ;
struct crypto_rfc3686_ctx {int child; } ;


 int crypto_free_skcipher (int ) ;
 struct crypto_rfc3686_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void crypto_rfc3686_exit_tfm(struct crypto_skcipher *tfm)
{
 struct crypto_rfc3686_ctx *ctx = crypto_skcipher_ctx(tfm);

 crypto_free_skcipher(ctx->child);
}
