
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_rfc4309_ctx {int child; } ;
struct crypto_aead {int dummy; } ;


 struct crypto_rfc4309_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_aead (int ) ;

__attribute__((used)) static void crypto_rfc4309_exit_tfm(struct crypto_aead *tfm)
{
 struct crypto_rfc4309_ctx *ctx = crypto_aead_ctx(tfm);

 crypto_free_aead(ctx->child);
}
