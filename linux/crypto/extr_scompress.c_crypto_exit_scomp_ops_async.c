
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_scomp {int dummy; } ;


 int crypto_free_scomp (struct crypto_scomp*) ;
 int crypto_scomp_free_scratches () ;
 struct crypto_scomp** crypto_tfm_ctx (struct crypto_tfm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scomp_lock ;
 int scomp_scratch_users ;

__attribute__((used)) static void crypto_exit_scomp_ops_async(struct crypto_tfm *tfm)
{
 struct crypto_scomp **ctx = crypto_tfm_ctx(tfm);

 crypto_free_scomp(*ctx);

 mutex_lock(&scomp_lock);
 if (!--scomp_scratch_users)
  crypto_scomp_free_scratches();
 mutex_unlock(&scomp_lock);
}
