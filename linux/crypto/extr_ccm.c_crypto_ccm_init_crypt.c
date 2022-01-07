
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct crypto_ccm_req_priv_ctx {struct scatterlist* dst; struct scatterlist* src; int flags; } ;
struct aead_request {int* iv; int assoclen; int dst; int src; } ;


 int aead_request_flags (struct aead_request*) ;
 int crypto_ccm_check_iv (int*) ;
 struct crypto_ccm_req_priv_ctx* crypto_ccm_reqctx (struct aead_request*) ;
 int memset (int*,int ,int) ;
 struct scatterlist* scatterwalk_ffwd (struct scatterlist*,int ,int ) ;
 int sg_chain (struct scatterlist*,int,struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int*,int) ;

__attribute__((used)) static int crypto_ccm_init_crypt(struct aead_request *req, u8 *tag)
{
 struct crypto_ccm_req_priv_ctx *pctx = crypto_ccm_reqctx(req);
 struct scatterlist *sg;
 u8 *iv = req->iv;
 int err;

 err = crypto_ccm_check_iv(iv);
 if (err)
  return err;

 pctx->flags = aead_request_flags(req);




 memset(iv + 15 - iv[0], 0, iv[0] + 1);

 sg_init_table(pctx->src, 3);
 sg_set_buf(pctx->src, tag, 16);
 sg = scatterwalk_ffwd(pctx->src + 1, req->src, req->assoclen);
 if (sg != pctx->src + 1)
  sg_chain(pctx->src, 2, sg);

 if (req->src != req->dst) {
  sg_init_table(pctx->dst, 3);
  sg_set_buf(pctx->dst, tag, 16);
  sg = scatterwalk_ffwd(pctx->dst + 1, req->dst, req->assoclen);
  if (sg != pctx->dst + 1)
   sg_chain(pctx->dst, 2, sg);
 }

 return 0;
}
