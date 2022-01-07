
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_ccm_req_priv_ctx {struct scatterlist* src; int flags; struct scatterlist* dst; int * odata; struct skcipher_request skreq; } ;
struct crypto_ccm_ctx {int ctr; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ src; scalar_t__ dst; int * iv; } ;


 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_ccm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ccm_auth (struct aead_request*,int ,unsigned int) ;
 int crypto_ccm_encrypt_done ;
 int crypto_ccm_init_crypt (struct aead_request*,int *) ;
 struct crypto_ccm_req_priv_ctx* crypto_ccm_reqctx (struct aead_request*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int scatterwalk_map_and_copy (int *,int ,unsigned int,int ,int) ;
 int sg_next (struct scatterlist*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct aead_request*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int *) ;
 int skcipher_request_set_tfm (struct skcipher_request*,int ) ;

__attribute__((used)) static int crypto_ccm_encrypt(struct aead_request *req)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct crypto_ccm_ctx *ctx = crypto_aead_ctx(aead);
 struct crypto_ccm_req_priv_ctx *pctx = crypto_ccm_reqctx(req);
 struct skcipher_request *skreq = &pctx->skreq;
 struct scatterlist *dst;
 unsigned int cryptlen = req->cryptlen;
 u8 *odata = pctx->odata;
 u8 *iv = req->iv;
 int err;

 err = crypto_ccm_init_crypt(req, odata);
 if (err)
  return err;

 err = crypto_ccm_auth(req, sg_next(pctx->src), cryptlen);
 if (err)
  return err;

 dst = pctx->src;
 if (req->src != req->dst)
  dst = pctx->dst;

 skcipher_request_set_tfm(skreq, ctx->ctr);
 skcipher_request_set_callback(skreq, pctx->flags,
          crypto_ccm_encrypt_done, req);
 skcipher_request_set_crypt(skreq, pctx->src, dst, cryptlen + 16, iv);
 err = crypto_skcipher_encrypt(skreq);
 if (err)
  return err;


 scatterwalk_map_and_copy(odata, sg_next(dst), cryptlen,
     crypto_aead_authsize(aead), 1);
 return err;
}
