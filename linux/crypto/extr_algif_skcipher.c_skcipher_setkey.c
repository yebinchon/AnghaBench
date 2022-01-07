
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int crypto_skcipher_setkey (void*,int const*,unsigned int) ;

__attribute__((used)) static int skcipher_setkey(void *private, const u8 *key, unsigned int keylen)
{
 return crypto_skcipher_setkey(private, key, keylen);
}
