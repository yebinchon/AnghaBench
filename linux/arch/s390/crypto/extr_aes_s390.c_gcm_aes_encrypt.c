
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int CPACF_ENCRYPT ;
 int gcm_aes_crypt (struct aead_request*,int ) ;

__attribute__((used)) static int gcm_aes_encrypt(struct aead_request *req)
{
 return gcm_aes_crypt(req, CPACF_ENCRYPT);
}
