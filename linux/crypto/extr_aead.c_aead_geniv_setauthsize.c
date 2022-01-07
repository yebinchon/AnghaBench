
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct aead_geniv_ctx {int child; } ;


 struct aead_geniv_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (int ,unsigned int) ;

__attribute__((used)) static int aead_geniv_setauthsize(struct crypto_aead *tfm,
      unsigned int authsize)
{
 struct aead_geniv_ctx *ctx = crypto_aead_ctx(tfm);

 return crypto_aead_setauthsize(ctx->child, authsize);
}
