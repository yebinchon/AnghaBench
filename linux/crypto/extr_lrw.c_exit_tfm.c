
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int child; scalar_t__ table; } ;
struct crypto_skcipher {int dummy; } ;


 int crypto_free_skcipher (int ) ;
 struct priv* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int gf128mul_free_64k (scalar_t__) ;

__attribute__((used)) static void exit_tfm(struct crypto_skcipher *tfm)
{
 struct priv *ctx = crypto_skcipher_ctx(tfm);

 if (ctx->table)
  gf128mul_free_64k(ctx->table);
 crypto_free_skcipher(ctx->child);
}
