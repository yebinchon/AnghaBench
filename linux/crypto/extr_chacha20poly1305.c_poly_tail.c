
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* cryptlen; void* assoclen; } ;
struct poly_req {int req; int src; TYPE_2__ tail; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_3__ {struct poly_req poly; } ;
struct chachapoly_req_ctx {int tag; int flags; int cryptlen; int assoclen; TYPE_1__ u; } ;
struct chachapoly_ctx {int poly; } ;
struct aead_request {int dummy; } ;


 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int ahash_request_set_callback (int *,int ,int ,struct aead_request*) ;
 int ahash_request_set_crypt (int *,int ,int ,int) ;
 int ahash_request_set_tfm (int *,int ) ;
 void* cpu_to_le64 (int ) ;
 struct chachapoly_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ahash_finup (int *) ;
 int poly_tail_continue (struct aead_request*) ;
 int poly_tail_done ;
 int sg_init_one (int ,TYPE_2__*,int) ;

__attribute__((used)) static int poly_tail(struct aead_request *req)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 struct poly_req *preq = &rctx->u.poly;
 int err;

 preq->tail.assoclen = cpu_to_le64(rctx->assoclen);
 preq->tail.cryptlen = cpu_to_le64(rctx->cryptlen);
 sg_init_one(preq->src, &preq->tail, sizeof(preq->tail));

 ahash_request_set_callback(&preq->req, rctx->flags,
       poly_tail_done, req);
 ahash_request_set_tfm(&preq->req, ctx->poly);
 ahash_request_set_crypt(&preq->req, preq->src,
    rctx->tag, sizeof(preq->tail));

 err = crypto_ahash_finup(&preq->req);
 if (err)
  return err;

 return poly_tail_continue(req);
}
