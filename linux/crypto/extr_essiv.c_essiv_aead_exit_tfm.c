
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aead; } ;
struct essiv_tfm_ctx {int hash; int essiv_cipher; TYPE_1__ u; } ;
struct crypto_aead {int dummy; } ;


 struct essiv_tfm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_free_aead (int ) ;
 int crypto_free_cipher (int ) ;
 int crypto_free_shash (int ) ;

__attribute__((used)) static void essiv_aead_exit_tfm(struct crypto_aead *tfm)
{
 struct essiv_tfm_ctx *tctx = crypto_aead_ctx(tfm);

 crypto_free_aead(tctx->u.aead);
 crypto_free_cipher(tctx->essiv_cipher);
 crypto_free_shash(tctx->hash);
}
