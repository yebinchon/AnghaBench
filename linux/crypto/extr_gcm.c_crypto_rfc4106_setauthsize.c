
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_rfc4106_ctx {int child; } ;
struct crypto_aead {int dummy; } ;


 struct crypto_rfc4106_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (int ,unsigned int) ;
 int crypto_rfc4106_check_authsize (unsigned int) ;

__attribute__((used)) static int crypto_rfc4106_setauthsize(struct crypto_aead *parent,
          unsigned int authsize)
{
 struct crypto_rfc4106_ctx *ctx = crypto_aead_ctx(parent);
 int err;

 err = crypto_rfc4106_check_authsize(authsize);
 if (err)
  return err;

 return crypto_aead_setauthsize(ctx->child, authsize);
}
