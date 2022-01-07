
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_tfm {int aead; } ;


 int crypto_aead_setauthsize (int ,unsigned int) ;

__attribute__((used)) static int aead_setauthsize(void *private, unsigned int authsize)
{
 struct aead_tfm *tfm = private;

 return crypto_aead_setauthsize(tfm->aead, authsize);
}
