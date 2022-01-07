
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_authenc_esn_ctx {struct crypto_skcipher* enc; scalar_t__ reqoff; } ;
struct crypto_aead {int dummy; } ;
struct authenc_esn_request_ctx {int dst; int src; scalar_t__ tail; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; int iv; int dst; int src; } ;


 struct authenc_esn_request_ctx* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 struct crypto_authenc_esn_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_authenc_esn_copy (struct aead_request*,unsigned int) ;
 int crypto_authenc_esn_encrypt_done ;
 int crypto_authenc_esn_genicv (struct aead_request*,int ) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 struct scatterlist* scatterwalk_ffwd (int ,int ,unsigned int) ;
 int sg_init_table (int ,int) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct aead_request*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int ) ;
 int skcipher_request_set_tfm (struct skcipher_request*,struct crypto_skcipher*) ;

__attribute__((used)) static int crypto_authenc_esn_encrypt(struct aead_request *req)
{
 struct crypto_aead *authenc_esn = crypto_aead_reqtfm(req);
 struct authenc_esn_request_ctx *areq_ctx = aead_request_ctx(req);
 struct crypto_authenc_esn_ctx *ctx = crypto_aead_ctx(authenc_esn);
 struct skcipher_request *skreq = (void *)(areq_ctx->tail +
        ctx->reqoff);
 struct crypto_skcipher *enc = ctx->enc;
 unsigned int assoclen = req->assoclen;
 unsigned int cryptlen = req->cryptlen;
 struct scatterlist *src, *dst;
 int err;

 sg_init_table(areq_ctx->src, 2);
 src = scatterwalk_ffwd(areq_ctx->src, req->src, assoclen);
 dst = src;

 if (req->src != req->dst) {
  err = crypto_authenc_esn_copy(req, assoclen);
  if (err)
   return err;

  sg_init_table(areq_ctx->dst, 2);
  dst = scatterwalk_ffwd(areq_ctx->dst, req->dst, assoclen);
 }

 skcipher_request_set_tfm(skreq, enc);
 skcipher_request_set_callback(skreq, aead_request_flags(req),
          crypto_authenc_esn_encrypt_done, req);
 skcipher_request_set_crypt(skreq, src, dst, cryptlen, req->iv);

 err = crypto_skcipher_encrypt(skreq);
 if (err)
  return err;

 return crypto_authenc_esn_genicv(req, aead_request_flags(req));
}
