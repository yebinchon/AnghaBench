
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int ccm_setauthsize(struct crypto_aead *tfm, unsigned int authsize)
{
 if ((authsize & 1) || authsize < 4)
  return -EINVAL;
 return 0;
}
