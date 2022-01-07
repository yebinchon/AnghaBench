
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_skcipher {int dummy; } ;


 int CRYPTO_FEEDBACK_MODE_NO_FB ;
 int CRYPTO_MODE_CBC ;
 int crypto4xx_setkey_aes (struct crypto_skcipher*,int const*,unsigned int,int ,int ) ;

int crypto4xx_setkey_aes_cbc(struct crypto_skcipher *cipher,
        const u8 *key, unsigned int keylen)
{
 return crypto4xx_setkey_aes(cipher, key, keylen, CRYPTO_MODE_CBC,
        CRYPTO_FEEDBACK_MODE_NO_FB);
}
