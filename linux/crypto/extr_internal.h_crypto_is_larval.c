
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_flags; } ;


 int CRYPTO_ALG_LARVAL ;

__attribute__((used)) static inline int crypto_is_larval(struct crypto_alg *alg)
{
 return alg->cra_flags & CRYPTO_ALG_LARVAL;
}
