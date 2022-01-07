
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_flags; int * cra_type; int cra_blocksize; } ;
struct aead_alg {int chunksize; int ivsize; int maxauthsize; struct crypto_alg base; } ;


 int CRYPTO_ALG_TYPE_AEAD ;
 int CRYPTO_ALG_TYPE_MASK ;
 int EINVAL ;
 int PAGE_SIZE ;
 int crypto_aead_type ;
 int max3 (int ,int ,int ) ;

__attribute__((used)) static int aead_prepare_alg(struct aead_alg *alg)
{
 struct crypto_alg *base = &alg->base;

 if (max3(alg->maxauthsize, alg->ivsize, alg->chunksize) >
     PAGE_SIZE / 8)
  return -EINVAL;

 if (!alg->chunksize)
  alg->chunksize = base->cra_blocksize;

 base->cra_type = &crypto_aead_type;
 base->cra_flags &= ~CRYPTO_ALG_TYPE_MASK;
 base->cra_flags |= CRYPTO_ALG_TYPE_AEAD;

 return 0;
}
