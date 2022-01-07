
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_aead {int dummy; } ;
struct chacha_req {int req; int iv; int src; } ;
struct TYPE_2__ {struct chacha_req chacha; } ;
struct chachapoly_req_ctx {int assoclen; int flags; int key; TYPE_1__ u; } ;
struct chachapoly_ctx {int chacha; } ;
struct aead_request {int assoclen; } ;


 int EINVAL ;
 int POLY1305_KEY_SIZE ;
 struct chachapoly_req_ctx* aead_request_ctx (struct aead_request*) ;
 int chacha_iv (int ,struct aead_request*,int ) ;
 struct chachapoly_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_skcipher_decrypt (int *) ;
 int memset (int ,int ,int) ;
 int poly_genkey_done ;
 int poly_init (struct aead_request*) ;
 int sg_init_one (int ,int ,int) ;
 int skcipher_request_set_callback (int *,int ,int ,struct aead_request*) ;
 int skcipher_request_set_crypt (int *,int ,int ,int ,int ) ;
 int skcipher_request_set_tfm (int *,int ) ;

__attribute__((used)) static int poly_genkey(struct aead_request *req)
{
 struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
 struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 struct chacha_req *creq = &rctx->u.chacha;
 int err;

 rctx->assoclen = req->assoclen;

 if (crypto_aead_ivsize(tfm) == 8) {
  if (rctx->assoclen < 8)
   return -EINVAL;
  rctx->assoclen -= 8;
 }

 memset(rctx->key, 0, sizeof(rctx->key));
 sg_init_one(creq->src, rctx->key, sizeof(rctx->key));

 chacha_iv(creq->iv, req, 0);

 skcipher_request_set_callback(&creq->req, rctx->flags,
          poly_genkey_done, req);
 skcipher_request_set_tfm(&creq->req, ctx->chacha);
 skcipher_request_set_crypt(&creq->req, creq->src, creq->src,
       POLY1305_KEY_SIZE, creq->iv);

 err = crypto_skcipher_decrypt(&creq->req);
 if (err)
  return err;

 return poly_init(req);
}
