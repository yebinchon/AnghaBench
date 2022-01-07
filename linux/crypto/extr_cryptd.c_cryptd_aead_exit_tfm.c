
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct cryptd_aead_ctx {int child; } ;


 struct cryptd_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_aead (int ) ;

__attribute__((used)) static void cryptd_aead_exit_tfm(struct crypto_aead *tfm)
{
 struct cryptd_aead_ctx *ctx = crypto_aead_ctx(tfm);
 crypto_free_aead(ctx->child);
}
