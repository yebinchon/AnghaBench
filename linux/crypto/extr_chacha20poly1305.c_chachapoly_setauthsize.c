
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_aead {int dummy; } ;


 int EINVAL ;
 unsigned int POLY1305_DIGEST_SIZE ;

__attribute__((used)) static int chachapoly_setauthsize(struct crypto_aead *tfm,
      unsigned int authsize)
{
 if (authsize != POLY1305_DIGEST_SIZE)
  return -EINVAL;

 return 0;
}
