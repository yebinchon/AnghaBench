
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct poly_req {int req; int src; int pad; } ;
struct TYPE_2__ {struct poly_req poly; } ;
struct chachapoly_req_ctx {unsigned int assoclen; int flags; TYPE_1__ u; } ;
struct chachapoly_ctx {int poly; } ;
struct aead_request {int dummy; } ;


 unsigned int POLY1305_BLOCK_SIZE ;
 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int ahash_request_set_callback (int *,int ,int ,struct aead_request*) ;
 int ahash_request_set_crypt (int *,int ,int *,unsigned int) ;
 int ahash_request_set_tfm (int *,int ) ;
 struct chachapoly_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ahash_update (int *) ;
 int memset (int ,int ,int) ;
 int poly_adpad_done ;
 int poly_cipher (struct aead_request*) ;
 int sg_init_one (int ,int ,unsigned int) ;

__attribute__((used)) static int poly_adpad(struct aead_request *req)
{
 struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 struct poly_req *preq = &rctx->u.poly;
 unsigned int padlen;
 int err;

 padlen = -rctx->assoclen % POLY1305_BLOCK_SIZE;
 memset(preq->pad, 0, sizeof(preq->pad));
 sg_init_one(preq->src, preq->pad, padlen);

 ahash_request_set_callback(&preq->req, rctx->flags,
       poly_adpad_done, req);
 ahash_request_set_tfm(&preq->req, ctx->poly);
 ahash_request_set_crypt(&preq->req, preq->src, ((void*)0), padlen);

 err = crypto_ahash_update(&preq->req);
 if (err)
  return err;

 return poly_cipher(req);
}
