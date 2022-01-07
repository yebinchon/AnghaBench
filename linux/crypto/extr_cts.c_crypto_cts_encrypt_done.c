
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct crypto_async_request {struct skcipher_request* data; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int cts_cbc_encrypt (struct skcipher_request*) ;
 int skcipher_request_complete (struct skcipher_request*,int) ;

__attribute__((used)) static void crypto_cts_encrypt_done(struct crypto_async_request *areq, int err)
{
 struct skcipher_request *req = areq->data;

 if (err)
  goto out;

 err = cts_cbc_encrypt(req);
 if (err == -EINPROGRESS || err == -EBUSY)
  return;

out:
 skcipher_request_complete(req, err);
}
