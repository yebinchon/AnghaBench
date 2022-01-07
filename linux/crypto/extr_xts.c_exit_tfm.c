
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int tweak; int child; } ;
struct crypto_skcipher {int dummy; } ;


 int crypto_free_cipher (int ) ;
 int crypto_free_skcipher (int ) ;
 struct priv* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void exit_tfm(struct crypto_skcipher *tfm)
{
 struct priv *ctx = crypto_skcipher_ctx(tfm);

 crypto_free_skcipher(ctx->child);
 crypto_free_cipher(ctx->tweak);
}
