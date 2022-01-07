
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;


 int authenc_request_complete (struct aead_request*,int) ;
 int crypto_authenc_genicv (struct aead_request*,int ) ;

__attribute__((used)) static void crypto_authenc_encrypt_done(struct crypto_async_request *req,
     int err)
{
 struct aead_request *areq = req->data;

 if (err)
  goto out;

 err = crypto_authenc_genicv(areq, 0);

out:
 authenc_request_complete(areq, err);
}
