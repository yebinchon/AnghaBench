
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_flags; int * cra_type; } ;
struct akcipher_alg {struct crypto_alg base; } ;


 int CRYPTO_ALG_TYPE_AKCIPHER ;
 int CRYPTO_ALG_TYPE_MASK ;
 int crypto_akcipher_type ;

__attribute__((used)) static void akcipher_prepare_alg(struct akcipher_alg *alg)
{
 struct crypto_alg *base = &alg->base;

 base->cra_type = &crypto_akcipher_type;
 base->cra_flags &= ~CRYPTO_ALG_TYPE_MASK;
 base->cra_flags |= CRYPTO_ALG_TYPE_AKCIPHER;
}
