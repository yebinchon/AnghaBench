
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_scomp {int dummy; } ;
struct crypto_alg {int * cra_type; } ;


 int crypto_acomp_type ;
 int crypto_alg_extsize (struct crypto_alg*) ;

__attribute__((used)) static unsigned int crypto_acomp_extsize(struct crypto_alg *alg)
{
 int extsize = crypto_alg_extsize(alg);

 if (alg->cra_type != &crypto_acomp_type)
  extsize += sizeof(struct crypto_scomp *);

 return extsize;
}
