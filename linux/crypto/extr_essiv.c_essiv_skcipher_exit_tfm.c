
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int skcipher; } ;
struct essiv_tfm_ctx {int hash; int essiv_cipher; TYPE_1__ u; } ;
struct crypto_skcipher {int dummy; } ;


 int crypto_free_cipher (int ) ;
 int crypto_free_shash (int ) ;
 int crypto_free_skcipher (int ) ;
 struct essiv_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void essiv_skcipher_exit_tfm(struct crypto_skcipher *tfm)
{
 struct essiv_tfm_ctx *tctx = crypto_skcipher_ctx(tfm);

 crypto_free_skcipher(tctx->u.skcipher);
 crypto_free_cipher(tctx->essiv_cipher);
 crypto_free_shash(tctx->hash);
}
