
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scomp_alg {int base; } ;


 int crypto_unregister_alg (int *) ;

int crypto_unregister_scomp(struct scomp_alg *alg)
{
 return crypto_unregister_alg(&alg->base);
}
