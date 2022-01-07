
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jitterentropy {int jent_lock; int * entropy_collector; } ;
struct crypto_tfm {int dummy; } ;


 struct jitterentropy* crypto_tfm_ctx (struct crypto_tfm*) ;
 int jent_entropy_collector_free (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void jent_kcapi_cleanup(struct crypto_tfm *tfm)
{
 struct jitterentropy *rng = crypto_tfm_ctx(tfm);

 spin_lock(&rng->jent_lock);
 if (rng->entropy_collector)
  jent_entropy_collector_free(rng->entropy_collector);
 rng->entropy_collector = ((void*)0);
 spin_unlock(&rng->jent_lock);
}
