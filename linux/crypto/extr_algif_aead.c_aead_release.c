
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_tfm {int aead; } ;


 int crypto_free_aead (int ) ;
 int crypto_put_default_null_skcipher () ;
 int kfree (struct aead_tfm*) ;

__attribute__((used)) static void aead_release(void *private)
{
 struct aead_tfm *tfm = private;

 crypto_free_aead(tfm->aead);
 crypto_put_default_null_skcipher();
 kfree(tfm);
}
