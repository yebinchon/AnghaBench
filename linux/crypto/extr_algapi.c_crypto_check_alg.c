
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_alignmask; scalar_t__ cra_blocksize; int cra_flags; scalar_t__ cra_priority; int cra_refcnt; int cra_type; int * cra_driver_name; int * cra_name; int cra_module; } ;


 int CRYPTO_ALG_TYPE_CIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 int EINVAL ;
 int MAX_ALGAPI_ALIGNMASK ;
 scalar_t__ MAX_ALGAPI_BLOCKSIZE ;
 int MAX_CIPHER_ALIGNMASK ;
 scalar_t__ MAX_CIPHER_BLOCKSIZE ;
 int crypto_check_module_sig (int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static int crypto_check_alg(struct crypto_alg *alg)
{
 crypto_check_module_sig(alg->cra_module);

 if (!alg->cra_name[0] || !alg->cra_driver_name[0])
  return -EINVAL;

 if (alg->cra_alignmask & (alg->cra_alignmask + 1))
  return -EINVAL;


 if (alg->cra_alignmask > MAX_ALGAPI_ALIGNMASK)
  return -EINVAL;

 if (alg->cra_blocksize > MAX_ALGAPI_BLOCKSIZE)
  return -EINVAL;


 if (!alg->cra_type && (alg->cra_flags & CRYPTO_ALG_TYPE_MASK) ==
          CRYPTO_ALG_TYPE_CIPHER) {
  if (alg->cra_alignmask > MAX_CIPHER_ALIGNMASK)
   return -EINVAL;

  if (alg->cra_blocksize > MAX_CIPHER_BLOCKSIZE)
   return -EINVAL;
 }

 if (alg->cra_priority < 0)
  return -EINVAL;

 refcount_set(&alg->cra_refcnt, 1);

 return 0;
}
