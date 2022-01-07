
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_async_request {int flags; int tfm; struct akcipher_request* data; } ;
struct TYPE_2__ {int (* complete ) (struct crypto_async_request*,int ) ;struct akcipher_request* data; } ;
struct akcipher_request {TYPE_1__ base; } ;


 int EINPROGRESS ;
 int crypto_akcipher_reqtfm (struct akcipher_request*) ;
 int crypto_akcipher_tfm (int ) ;
 int pkcs1pad_encrypt_sign_complete (struct akcipher_request*,int) ;
 int stub1 (struct crypto_async_request*,int ) ;

__attribute__((used)) static void pkcs1pad_encrypt_sign_complete_cb(
  struct crypto_async_request *child_async_req, int err)
{
 struct akcipher_request *req = child_async_req->data;
 struct crypto_async_request async_req;

 if (err == -EINPROGRESS)
  return;

 async_req.data = req->base.data;
 async_req.tfm = crypto_akcipher_tfm(crypto_akcipher_reqtfm(req));
 async_req.flags = child_async_req->flags;
 req->base.complete(&async_req,
   pkcs1pad_encrypt_sign_complete(req, err));
}
