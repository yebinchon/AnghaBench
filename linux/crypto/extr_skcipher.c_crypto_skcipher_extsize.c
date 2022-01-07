
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_blkcipher {int dummy; } ;
struct crypto_alg {int * cra_type; } ;
struct crypto_ablkcipher {int dummy; } ;


 int crypto_ablkcipher_type ;
 unsigned int crypto_alg_extsize (struct crypto_alg*) ;
 int crypto_blkcipher_type ;

__attribute__((used)) static unsigned int crypto_skcipher_extsize(struct crypto_alg *alg)
{
 if (alg->cra_type == &crypto_blkcipher_type)
  return sizeof(struct crypto_blkcipher *);

 if (alg->cra_type == &crypto_ablkcipher_type)
  return sizeof(struct crypto_ablkcipher *);

 return crypto_alg_extsize(alg);
}
