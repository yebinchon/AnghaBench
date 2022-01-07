
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_authenc_ctx {struct crypto_skcipher* enc; } ;
struct crypto_aead {int dummy; } ;
struct authenc_request_ctx {int dst; int src; scalar_t__ tail; } ;
struct authenc_instance_ctx {scalar_t__ reqoff; } ;
struct aead_request {unsigned int cryptlen; int iv; int assoclen; int dst; int src; } ;
struct aead_instance {int dummy; } ;


 struct aead_instance* aead_alg_instance (struct crypto_aead*) ;
 struct authenc_instance_ctx* aead_instance_ctx (struct aead_instance*) ;
 struct authenc_request_ctx* aead_request_ctx (struct aead_request*) ;
 int aead_request_flags (struct aead_request*) ;
 struct crypto_authenc_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_authenc_copy_assoc (struct aead_request*) ;
 int crypto_authenc_encrypt_done ;
 int crypto_authenc_genicv (struct aead_request*,int ) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 struct scatterlist* scatterwalk_ffwd (int ,int ,int ) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct aead_request*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int ) ;
 int skcipher_request_set_tfm (struct skcipher_request*,struct crypto_skcipher*) ;

__attribute__((used)) static int crypto_authenc_encrypt(struct aead_request *req)
{
 struct crypto_aead *authenc = crypto_aead_reqtfm(req);
 struct aead_instance *inst = aead_alg_instance(authenc);
 struct crypto_authenc_ctx *ctx = crypto_aead_ctx(authenc);
 struct authenc_instance_ctx *ictx = aead_instance_ctx(inst);
 struct authenc_request_ctx *areq_ctx = aead_request_ctx(req);
 struct crypto_skcipher *enc = ctx->enc;
 unsigned int cryptlen = req->cryptlen;
 struct skcipher_request *skreq = (void *)(areq_ctx->tail +
        ictx->reqoff);
 struct scatterlist *src, *dst;
 int err;

 src = scatterwalk_ffwd(areq_ctx->src, req->src, req->assoclen);
 dst = src;

 if (req->src != req->dst) {
  err = crypto_authenc_copy_assoc(req);
  if (err)
   return err;

  dst = scatterwalk_ffwd(areq_ctx->dst, req->dst, req->assoclen);
 }

 skcipher_request_set_tfm(skreq, enc);
 skcipher_request_set_callback(skreq, aead_request_flags(req),
          crypto_authenc_encrypt_done, req);
 skcipher_request_set_crypt(skreq, src, dst, cryptlen, req->iv);

 err = crypto_skcipher_encrypt(skreq);
 if (err)
  return err;

 return crypto_authenc_genicv(req, aead_request_flags(req));
}
