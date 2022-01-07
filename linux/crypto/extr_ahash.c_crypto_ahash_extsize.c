
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_shash {int dummy; } ;
struct crypto_alg {int * cra_type; } ;


 int crypto_ahash_type ;
 unsigned int crypto_alg_extsize (struct crypto_alg*) ;

__attribute__((used)) static unsigned int crypto_ahash_extsize(struct crypto_alg *alg)
{
 if (alg->cra_type != &crypto_ahash_type)
  return sizeof(struct crypto_shash *);

 return crypto_alg_extsize(alg);
}
