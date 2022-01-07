
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_request {int dummy; } ;
struct scatterlist {int dummy; } ;
struct crypto_ccm_req_priv_ctx {struct scatterlist* src; int flags; struct scatterlist* dst; int * idata; int * odata; int * auth_tag; struct skcipher_request skreq; } ;
struct crypto_ccm_ctx {int ctr; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ src; scalar_t__ dst; int iv; } ;


 int EBADMSG ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_ccm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ccm_auth (struct aead_request*,int ,unsigned int) ;
 int crypto_ccm_decrypt_done ;
 int crypto_ccm_init_crypt (struct aead_request*,int *) ;
 struct crypto_ccm_req_priv_ctx* crypto_ccm_reqctx (struct aead_request*) ;
 scalar_t__ crypto_memneq (int *,int *,unsigned int) ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int memcpy (int *,int ,int) ;
 int scatterwalk_map_and_copy (int *,int ,unsigned int,unsigned int,int ) ;
 int sg_next (struct scatterlist*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct aead_request*) ;
 int skcipher_request_set_crypt (struct skcipher_request*,struct scatterlist*,struct scatterlist*,unsigned int,int *) ;
 int skcipher_request_set_tfm (struct skcipher_request*,int ) ;

__attribute__((used)) static int crypto_ccm_decrypt(struct aead_request *req)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct crypto_ccm_ctx *ctx = crypto_aead_ctx(aead);
 struct crypto_ccm_req_priv_ctx *pctx = crypto_ccm_reqctx(req);
 struct skcipher_request *skreq = &pctx->skreq;
 struct scatterlist *dst;
 unsigned int authsize = crypto_aead_authsize(aead);
 unsigned int cryptlen = req->cryptlen;
 u8 *authtag = pctx->auth_tag;
 u8 *odata = pctx->odata;
 u8 *iv = pctx->idata;
 int err;

 cryptlen -= authsize;

 err = crypto_ccm_init_crypt(req, authtag);
 if (err)
  return err;

 scatterwalk_map_and_copy(authtag, sg_next(pctx->src), cryptlen,
     authsize, 0);

 dst = pctx->src;
 if (req->src != req->dst)
  dst = pctx->dst;

 memcpy(iv, req->iv, 16);

 skcipher_request_set_tfm(skreq, ctx->ctr);
 skcipher_request_set_callback(skreq, pctx->flags,
          crypto_ccm_decrypt_done, req);
 skcipher_request_set_crypt(skreq, pctx->src, dst, cryptlen + 16, iv);
 err = crypto_skcipher_decrypt(skreq);
 if (err)
  return err;

 err = crypto_ccm_auth(req, sg_next(dst), cryptlen);
 if (err)
  return err;


 if (crypto_memneq(authtag, odata, authsize))
  return -EBADMSG;

 return err;
}
