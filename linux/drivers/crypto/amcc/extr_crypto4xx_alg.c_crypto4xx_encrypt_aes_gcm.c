
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int crypto4xx_crypt_aes_gcm (struct aead_request*,int) ;

int crypto4xx_encrypt_aes_gcm(struct aead_request *req)
{
 return crypto4xx_crypt_aes_gcm(req, 0);
}
