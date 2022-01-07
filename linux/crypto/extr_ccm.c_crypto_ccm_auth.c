
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct ahash_request {int dummy; } ;
struct crypto_ccm_req_priv_ctx {int * odata; int flags; int * idata; struct ahash_request ahreq; } ;
struct crypto_ccm_ctx {int mac; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int assoclen; struct scatterlist* src; } ;


 int ahash_request_set_callback (struct ahash_request*,int ,int *,int *) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,unsigned int) ;
 int ahash_request_set_tfm (struct ahash_request*,int ) ;
 struct crypto_ccm_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_ahash_finup (struct ahash_request*) ;
 int crypto_ahash_init (struct ahash_request*) ;
 int crypto_ahash_update (struct ahash_request*) ;
 struct crypto_ccm_req_priv_ctx* crypto_ccm_reqctx (struct aead_request*) ;
 int format_adata (int *,unsigned int) ;
 int format_input (int *,struct aead_request*,unsigned int) ;
 int memset (int *,int ,int) ;
 int sg_chain (struct scatterlist*,int,struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int *,int) ;

__attribute__((used)) static int crypto_ccm_auth(struct aead_request *req, struct scatterlist *plain,
      unsigned int cryptlen)
{
 struct crypto_ccm_req_priv_ctx *pctx = crypto_ccm_reqctx(req);
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct crypto_ccm_ctx *ctx = crypto_aead_ctx(aead);
 struct ahash_request *ahreq = &pctx->ahreq;
 unsigned int assoclen = req->assoclen;
 struct scatterlist sg[3];
 u8 *odata = pctx->odata;
 u8 *idata = pctx->idata;
 int ilen, err;


 err = format_input(odata, req, cryptlen);
 if (err)
  goto out;

 sg_init_table(sg, 3);
 sg_set_buf(&sg[0], odata, 16);


 if (assoclen) {
  ilen = format_adata(idata, assoclen);
  sg_set_buf(&sg[1], idata, ilen);
  sg_chain(sg, 3, req->src);
 } else {
  ilen = 0;
  sg_chain(sg, 2, req->src);
 }

 ahash_request_set_tfm(ahreq, ctx->mac);
 ahash_request_set_callback(ahreq, pctx->flags, ((void*)0), ((void*)0));
 ahash_request_set_crypt(ahreq, sg, ((void*)0), assoclen + ilen + 16);
 err = crypto_ahash_init(ahreq);
 if (err)
  goto out;
 err = crypto_ahash_update(ahreq);
 if (err)
  goto out;


 ilen = 16 - (assoclen + ilen) % 16;
 if (ilen < 16) {
  memset(idata, 0, ilen);
  sg_init_table(sg, 2);
  sg_set_buf(&sg[0], idata, ilen);
  if (plain)
   sg_chain(sg, 2, plain);
  plain = sg;
  cryptlen += ilen;
 }

 ahash_request_set_crypt(ahreq, plain, pctx->odata, cryptlen);
 err = crypto_ahash_finup(ahreq);
out:
 return err;
}
