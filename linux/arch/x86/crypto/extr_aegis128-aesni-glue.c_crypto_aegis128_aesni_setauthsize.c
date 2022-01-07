
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 unsigned int AEGIS128_MAX_AUTH_SIZE ;
 unsigned int AEGIS128_MIN_AUTH_SIZE ;
 int EINVAL ;

__attribute__((used)) static int crypto_aegis128_aesni_setauthsize(struct crypto_aead *tfm,
      unsigned int authsize)
{
 if (authsize > AEGIS128_MAX_AUTH_SIZE)
  return -EINVAL;
 if (authsize < AEGIS128_MIN_AUTH_SIZE)
  return -EINVAL;
 return 0;
}
