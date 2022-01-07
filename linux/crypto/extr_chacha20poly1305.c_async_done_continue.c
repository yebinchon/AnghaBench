
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chachapoly_req_ctx {int flags; } ;
struct aead_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int EBUSY ;
 int EINPROGRESS ;
 int aead_request_complete (struct aead_request*,int) ;
 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;

__attribute__((used)) static inline void async_done_continue(struct aead_request *req, int err,
           int (*cont)(struct aead_request *))
{
 if (!err) {
  struct chachapoly_req_ctx *rctx = aead_request_ctx(req);

  rctx->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;
  err = cont(req);
 }

 if (err != -EINPROGRESS && err != -EBUSY)
  aead_request_complete(req, err);
}
