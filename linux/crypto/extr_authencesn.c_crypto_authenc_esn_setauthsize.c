
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int crypto_authenc_esn_setauthsize(struct crypto_aead *authenc_esn,
       unsigned int authsize)
{
 if (authsize > 0 && authsize < 4)
  return -EINVAL;

 return 0;
}
