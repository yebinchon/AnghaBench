
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_larval {scalar_t__ adult; } ;
struct crypto_alg {int dummy; } ;


 int BUG_ON (int) ;
 int crypto_is_larval (struct crypto_alg*) ;
 int crypto_mod_put (scalar_t__) ;
 int kfree (struct crypto_larval*) ;

__attribute__((used)) static void crypto_larval_destroy(struct crypto_alg *alg)
{
 struct crypto_larval *larval = (void *)alg;

 BUG_ON(!crypto_is_larval(alg));
 if (larval->adult)
  crypto_mod_put(larval->adult);
 kfree(larval);
}
