
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_alg {int cra_list; } ;


 int crypto_unregister_alg (struct crypto_alg*) ;
 int list_empty (int *) ;

__attribute__((used)) static inline void __crypto_unregister_alg(struct crypto_alg *alg)
{
 if (!list_empty(&alg->cra_list))
  crypto_unregister_alg(alg);
}
