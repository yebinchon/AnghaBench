
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int assoclen; } ;


 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_ipsec_check_assoclen (int ) ;
 struct aead_request* crypto_rfc4106_crypt (struct aead_request*) ;

__attribute__((used)) static int crypto_rfc4106_decrypt(struct aead_request *req)
{
 int err;

 err = crypto_ipsec_check_assoclen(req->assoclen);
 if (err)
  return err;

 req = crypto_rfc4106_crypt(req);

 return crypto_aead_decrypt(req);
}
