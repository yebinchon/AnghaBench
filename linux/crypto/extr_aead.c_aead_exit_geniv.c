
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct aead_geniv_ctx {int child; } ;


 struct aead_geniv_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_aead (int ) ;
 int crypto_put_default_null_skcipher () ;

void aead_exit_geniv(struct crypto_aead *tfm)
{
 struct aead_geniv_ctx *ctx = crypto_aead_ctx(tfm);

 crypto_free_aead(ctx->child);
 crypto_put_default_null_skcipher();
}
