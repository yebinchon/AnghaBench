
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aead; } ;
struct essiv_tfm_ctx {TYPE_1__ u; } ;
struct crypto_aead {int dummy; } ;


 struct essiv_tfm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_setauthsize (int ,unsigned int) ;

__attribute__((used)) static int essiv_aead_setauthsize(struct crypto_aead *tfm,
      unsigned int authsize)
{
 struct essiv_tfm_ctx *tctx = crypto_aead_ctx(tfm);

 return crypto_aead_setauthsize(tctx->u.aead, authsize);
}
