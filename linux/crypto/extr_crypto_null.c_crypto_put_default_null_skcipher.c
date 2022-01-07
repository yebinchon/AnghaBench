
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * crypto_default_null_skcipher ;
 int crypto_default_null_skcipher_lock ;
 int crypto_default_null_skcipher_refcnt ;
 int crypto_free_sync_skcipher (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void crypto_put_default_null_skcipher(void)
{
 mutex_lock(&crypto_default_null_skcipher_lock);
 if (!--crypto_default_null_skcipher_refcnt) {
  crypto_free_sync_skcipher(crypto_default_null_skcipher);
  crypto_default_null_skcipher = ((void*)0);
 }
 mutex_unlock(&crypto_default_null_skcipher_lock);
}
