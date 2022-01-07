
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;


 int crypto_scomp_alloc_scratches () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scomp_lock ;
 int scomp_scratch_users ;

__attribute__((used)) static int crypto_scomp_init_tfm(struct crypto_tfm *tfm)
{
 int ret = 0;

 mutex_lock(&scomp_lock);
 if (!scomp_scratch_users++)
  ret = crypto_scomp_alloc_scratches();
 mutex_unlock(&scomp_lock);

 return ret;
}
