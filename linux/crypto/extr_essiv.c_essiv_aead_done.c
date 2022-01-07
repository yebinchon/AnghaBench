
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct essiv_aead_request_ctx {scalar_t__ assoc; } ;
struct crypto_async_request {struct aead_request* data; } ;
struct aead_request {int dummy; } ;


 int aead_request_complete (struct aead_request*,int) ;
 struct essiv_aead_request_ctx* aead_request_ctx (struct aead_request*) ;
 int kfree (scalar_t__) ;

__attribute__((used)) static void essiv_aead_done(struct crypto_async_request *areq, int err)
{
 struct aead_request *req = areq->data;
 struct essiv_aead_request_ctx *rctx = aead_request_ctx(req);

 if (rctx->assoc)
  kfree(rctx->assoc);
 aead_request_complete(req, err);
}
