
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct poly_req {int req; } ;
struct TYPE_2__ {struct poly_req poly; } ;
struct chachapoly_req_ctx {scalar_t__ cryptlen; int flags; int src; TYPE_1__ u; } ;
struct chachapoly_ctx {int poly; } ;
struct aead_request {scalar_t__ cryptlen; int assoclen; struct scatterlist* dst; struct scatterlist* src; } ;


 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int ahash_request_set_callback (int *,int ,int ,struct aead_request*) ;
 int ahash_request_set_crypt (int *,struct scatterlist*,int *,scalar_t__) ;
 int ahash_request_set_tfm (int *,int ) ;
 struct chachapoly_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ahash_update (int *) ;
 int poly_cipher_done ;
 int poly_cipherpad (struct aead_request*) ;
 struct scatterlist* scatterwalk_ffwd (int ,struct scatterlist*,int ) ;

__attribute__((used)) static int poly_cipher(struct aead_request *req)
{
 struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 struct poly_req *preq = &rctx->u.poly;
 struct scatterlist *crypt = req->src;
 int err;

 if (rctx->cryptlen == req->cryptlen)
  crypt = req->dst;

 crypt = scatterwalk_ffwd(rctx->src, crypt, req->assoclen);

 ahash_request_set_callback(&preq->req, rctx->flags,
       poly_cipher_done, req);
 ahash_request_set_tfm(&preq->req, ctx->poly);
 ahash_request_set_crypt(&preq->req, crypt, ((void*)0), rctx->cryptlen);

 err = crypto_ahash_update(&preq->req);
 if (err)
  return err;

 return poly_cipherpad(req);
}
