
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct akcipher_alg {int base; } ;


 int crypto_unregister_alg (int *) ;

void crypto_unregister_akcipher(struct akcipher_alg *alg)
{
 crypto_unregister_alg(&alg->base);
}
