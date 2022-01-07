
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_default_rng_lock ;
 int crypto_default_rng_refcnt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void crypto_put_default_rng(void)
{
 mutex_lock(&crypto_default_rng_lock);
 crypto_default_rng_refcnt--;
 mutex_unlock(&crypto_default_rng_lock);
}
