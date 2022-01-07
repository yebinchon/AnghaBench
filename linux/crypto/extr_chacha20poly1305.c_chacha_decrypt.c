
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct chacha_req {int req; int iv; } ;
struct TYPE_2__ {struct chacha_req chacha; } ;
struct chachapoly_req_ctx {scalar_t__ cryptlen; int flags; int dst; int src; TYPE_1__ u; } ;
struct chachapoly_ctx {int chacha; } ;
struct aead_request {int assoclen; int dst; int src; } ;


 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int chacha_decrypt_done ;
 int chacha_iv (int ,struct aead_request*,int) ;
 struct chachapoly_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_skcipher_decrypt (int *) ;
 int poly_verify_tag (struct aead_request*) ;
 struct scatterlist* scatterwalk_ffwd (int ,int ,int ) ;
 int skcipher_request_set_callback (int *,int ,int ,struct aead_request*) ;
 int skcipher_request_set_crypt (int *,struct scatterlist*,struct scatterlist*,scalar_t__,int ) ;
 int skcipher_request_set_tfm (int *,int ) ;

__attribute__((used)) static int chacha_decrypt(struct aead_request *req)
{
 struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 struct chacha_req *creq = &rctx->u.chacha;
 struct scatterlist *src, *dst;
 int err;

 if (rctx->cryptlen == 0)
  goto skip;

 chacha_iv(creq->iv, req, 1);

 src = scatterwalk_ffwd(rctx->src, req->src, req->assoclen);
 dst = src;
 if (req->src != req->dst)
  dst = scatterwalk_ffwd(rctx->dst, req->dst, req->assoclen);

 skcipher_request_set_callback(&creq->req, rctx->flags,
          chacha_decrypt_done, req);
 skcipher_request_set_tfm(&creq->req, ctx->chacha);
 skcipher_request_set_crypt(&creq->req, src, dst,
       rctx->cryptlen, creq->iv);
 err = crypto_skcipher_decrypt(&creq->req);
 if (err)
  return err;

skip:
 return poly_verify_tag(req);
}
