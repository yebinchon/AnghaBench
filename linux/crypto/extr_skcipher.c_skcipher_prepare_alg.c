
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_blocksize; int cra_flags; int * cra_type; } ;
struct skcipher_alg {int ivsize; int chunksize; int walksize; struct crypto_alg base; } ;


 int CRYPTO_ALG_TYPE_MASK ;
 int CRYPTO_ALG_TYPE_SKCIPHER ;
 int EINVAL ;
 int PAGE_SIZE ;
 int crypto_skcipher_type2 ;

__attribute__((used)) static int skcipher_prepare_alg(struct skcipher_alg *alg)
{
 struct crypto_alg *base = &alg->base;

 if (alg->ivsize > PAGE_SIZE / 8 || alg->chunksize > PAGE_SIZE / 8 ||
     alg->walksize > PAGE_SIZE / 8)
  return -EINVAL;

 if (!alg->chunksize)
  alg->chunksize = base->cra_blocksize;
 if (!alg->walksize)
  alg->walksize = alg->chunksize;

 base->cra_type = &crypto_skcipher_type2;
 base->cra_flags &= ~CRYPTO_ALG_TYPE_MASK;
 base->cra_flags |= CRYPTO_ALG_TYPE_SKCIPHER;

 return 0;
}
