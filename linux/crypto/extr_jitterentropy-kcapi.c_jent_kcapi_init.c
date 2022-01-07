
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jitterentropy {int jent_lock; int entropy_collector; } ;
struct crypto_tfm {int dummy; } ;


 int ENOMEM ;
 struct jitterentropy* crypto_tfm_ctx (struct crypto_tfm*) ;
 int jent_entropy_collector_alloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int jent_kcapi_init(struct crypto_tfm *tfm)
{
 struct jitterentropy *rng = crypto_tfm_ctx(tfm);
 int ret = 0;

 rng->entropy_collector = jent_entropy_collector_alloc(1, 0);
 if (!rng->entropy_collector)
  ret = -ENOMEM;

 spin_lock_init(&rng->jent_lock);
 return ret;
}
