
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int crypto_ahash_setkey (void*,int const*,unsigned int) ;

__attribute__((used)) static int hash_setkey(void *private, const u8 *key, unsigned int keylen)
{
 return crypto_ahash_setkey(private, key, keylen);
}
