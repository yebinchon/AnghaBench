
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int gcm_aes_setauthsize(struct crypto_aead *tfm, unsigned int authsize)
{
 switch (authsize) {
 case 4:
 case 8:
 case 12:
 case 13:
 case 14:
 case 15:
 case 16:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
