
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_sync_skcipher {int dummy; } ;


 scalar_t__ IS_ERR (struct crypto_sync_skcipher*) ;
 struct crypto_sync_skcipher* crypto_alloc_sync_skcipher (char*,int ,int ) ;
 struct crypto_sync_skcipher* crypto_default_null_skcipher ;
 int crypto_default_null_skcipher_lock ;
 int crypto_default_null_skcipher_refcnt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct crypto_sync_skcipher *crypto_get_default_null_skcipher(void)
{
 struct crypto_sync_skcipher *tfm;

 mutex_lock(&crypto_default_null_skcipher_lock);
 tfm = crypto_default_null_skcipher;

 if (!tfm) {
  tfm = crypto_alloc_sync_skcipher("ecb(cipher_null)", 0, 0);
  if (IS_ERR(tfm))
   goto unlock;

  crypto_default_null_skcipher = tfm;
 }

 crypto_default_null_skcipher_refcnt++;

unlock:
 mutex_unlock(&crypto_default_null_skcipher_lock);

 return tfm;
}
