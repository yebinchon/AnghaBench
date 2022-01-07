
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;
struct cryptd_aead_ctx {struct crypto_aead* child; } ;


 struct cryptd_aead_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (struct crypto_aead*,unsigned int) ;

__attribute__((used)) static int cryptd_aead_setauthsize(struct crypto_aead *parent,
       unsigned int authsize)
{
 struct cryptd_aead_ctx *ctx = crypto_aead_ctx(parent);
 struct crypto_aead *child = ctx->child;

 return crypto_aead_setauthsize(child, authsize);
}
