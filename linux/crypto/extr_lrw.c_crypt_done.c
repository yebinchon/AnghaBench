
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct rctx {TYPE_2__ subreq; } ;
struct crypto_async_request {struct skcipher_request* data; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int skcipher_request_complete (struct skcipher_request*,int) ;
 struct rctx* skcipher_request_ctx (struct skcipher_request*) ;
 int xor_tweak_post (struct skcipher_request*) ;

__attribute__((used)) static void crypt_done(struct crypto_async_request *areq, int err)
{
 struct skcipher_request *req = areq->data;

 if (!err) {
  struct rctx *rctx = skcipher_request_ctx(req);

  rctx->subreq.base.flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;
  err = xor_tweak_post(req);
 }

 skcipher_request_complete(req, err);
}
