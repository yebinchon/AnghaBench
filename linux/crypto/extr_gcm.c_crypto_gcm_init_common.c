
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypto_gcm_req_priv_ctx {int iv; struct scatterlist* dst; int auth_tag; struct scatterlist* src; } ;
struct aead_request {int assoclen; int dst; int src; int * iv; } ;
typedef int __be32 ;


 int GCM_AES_IV_SIZE ;
 int cpu_to_be32 (int) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int memcpy (int,int *,int) ;
 int memset (int ,int ,int) ;
 struct scatterlist* scatterwalk_ffwd (struct scatterlist*,int ,int ) ;
 int sg_chain (struct scatterlist*,int,struct scatterlist*) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int ,int) ;

__attribute__((used)) static void crypto_gcm_init_common(struct aead_request *req)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 __be32 counter = cpu_to_be32(1);
 struct scatterlist *sg;

 memset(pctx->auth_tag, 0, sizeof(pctx->auth_tag));
 memcpy(pctx->iv, req->iv, GCM_AES_IV_SIZE);
 memcpy(pctx->iv + GCM_AES_IV_SIZE, &counter, 4);

 sg_init_table(pctx->src, 3);
 sg_set_buf(pctx->src, pctx->auth_tag, sizeof(pctx->auth_tag));
 sg = scatterwalk_ffwd(pctx->src + 1, req->src, req->assoclen);
 if (sg != pctx->src + 1)
  sg_chain(pctx->src, 2, sg);

 if (req->src != req->dst) {
  sg_init_table(pctx->dst, 3);
  sg_set_buf(pctx->dst, pctx->auth_tag, sizeof(pctx->auth_tag));
  sg = scatterwalk_ffwd(pctx->dst + 1, req->dst, req->assoclen);
  if (sg != pctx->dst + 1)
   sg_chain(pctx->dst, 2, sg);
 }
}
