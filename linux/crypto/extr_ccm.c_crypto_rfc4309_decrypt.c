
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int assoclen; } ;


 int EINVAL ;
 int crypto_aead_decrypt (struct aead_request*) ;
 struct aead_request* crypto_rfc4309_crypt (struct aead_request*) ;

__attribute__((used)) static int crypto_rfc4309_decrypt(struct aead_request *req)
{
 if (req->assoclen != 16 && req->assoclen != 20)
  return -EINVAL;

 req = crypto_rfc4309_crypt(req);

 return crypto_aead_decrypt(req);
}
