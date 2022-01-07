
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_gcm_ghash_ctx {int complete; int cryptlen; int src; } ;
struct crypto_gcm_req_priv_ctx {int dst; int src; struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {scalar_t__ src; scalar_t__ dst; int cryptlen; } ;


 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int gcm_enc_copy_hash ;
 int gcm_hash (struct aead_request*,int ) ;
 int sg_next (int ) ;

__attribute__((used)) static int gcm_encrypt_continue(struct aead_request *req, u32 flags)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;

 gctx->src = sg_next(req->src == req->dst ? pctx->src : pctx->dst);
 gctx->cryptlen = req->cryptlen;
 gctx->complete = gcm_enc_copy_hash;

 return gcm_hash(req, flags);
}
