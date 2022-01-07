
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct crypto_async_request {struct skcipher_request* data; } ;


 int EINPROGRESS ;
 int skcipher_request_complete (struct skcipher_request*,int) ;

__attribute__((used)) static void cts_cbc_crypt_done(struct crypto_async_request *areq, int err)
{
 struct skcipher_request *req = areq->data;

 if (err == -EINPROGRESS)
  return;

 skcipher_request_complete(req, err);
}
