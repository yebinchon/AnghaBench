
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto {int verify_tfm; int csums_tfm; int integrity_tfm; int cram_hmac_tfm; } ;


 int crypto_free_shash (int ) ;

__attribute__((used)) static void free_crypto(struct crypto *crypto)
{
 crypto_free_shash(crypto->cram_hmac_tfm);
 crypto_free_shash(crypto->integrity_tfm);
 crypto_free_shash(crypto->csums_tfm);
 crypto_free_shash(crypto->verify_tfm);
}
