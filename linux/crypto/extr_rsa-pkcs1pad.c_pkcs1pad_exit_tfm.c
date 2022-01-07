
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkcs1pad_ctx {int child; } ;
struct crypto_akcipher {int dummy; } ;


 struct pkcs1pad_ctx* akcipher_tfm_ctx (struct crypto_akcipher*) ;
 int crypto_free_akcipher (int ) ;

__attribute__((used)) static void pkcs1pad_exit_tfm(struct crypto_akcipher *tfm)
{
 struct pkcs1pad_ctx *ctx = akcipher_tfm_ctx(tfm);

 crypto_free_akcipher(ctx->child);
}
