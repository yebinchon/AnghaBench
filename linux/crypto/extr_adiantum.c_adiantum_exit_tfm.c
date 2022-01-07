
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_skcipher {int dummy; } ;
struct adiantum_tfm_ctx {int hash; int blockcipher; int streamcipher; } ;


 int crypto_free_cipher (int ) ;
 int crypto_free_shash (int ) ;
 int crypto_free_skcipher (int ) ;
 struct adiantum_tfm_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;

__attribute__((used)) static void adiantum_exit_tfm(struct crypto_skcipher *tfm)
{
 struct adiantum_tfm_ctx *tctx = crypto_skcipher_ctx(tfm);

 crypto_free_skcipher(tctx->streamcipher);
 crypto_free_cipher(tctx->blockcipher);
 crypto_free_shash(tctx->hash);
}
