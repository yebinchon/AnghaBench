
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_shash {int dummy; } ;


 int ENOSYS ;

int shash_no_setkey(struct crypto_shash *tfm, const u8 *key,
      unsigned int keylen)
{
 return -ENOSYS;
}
