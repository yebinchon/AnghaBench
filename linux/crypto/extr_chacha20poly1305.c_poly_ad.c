
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct poly_req {int req; } ;
struct TYPE_2__ {struct poly_req poly; } ;
struct chachapoly_req_ctx {int assoclen; int flags; TYPE_1__ u; } ;
struct chachapoly_ctx {int poly; } ;
struct aead_request {int src; } ;


 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int ahash_request_set_callback (int *,int ,int ,struct aead_request*) ;
 int ahash_request_set_crypt (int *,int ,int *,int ) ;
 int ahash_request_set_tfm (int *,int ) ;
 struct chachapoly_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ahash_update (int *) ;
 int poly_ad_done ;
 int poly_adpad (struct aead_request*) ;

__attribute__((used)) static int poly_ad(struct aead_request *req)
{
 struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 struct poly_req *preq = &rctx->u.poly;
 int err;

 ahash_request_set_callback(&preq->req, rctx->flags,
       poly_ad_done, req);
 ahash_request_set_tfm(&preq->req, ctx->poly);
 ahash_request_set_crypt(&preq->req, req->src, ((void*)0), rctx->assoclen);

 err = crypto_ahash_update(&preq->req);
 if (err)
  return err;

 return poly_adpad(req);
}
