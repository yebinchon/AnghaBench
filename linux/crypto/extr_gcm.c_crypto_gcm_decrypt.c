
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_gcm_ghash_ctx {unsigned int cryptlen; int complete; int src; } ;
struct crypto_gcm_req_priv_ctx {int src; struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; } ;


 int aead_request_flags (struct aead_request*) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_gcm_init_common (struct aead_request*) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int gcm_dec_hash_continue ;
 int gcm_hash (struct aead_request*,int ) ;
 int sg_next (int ) ;

__attribute__((used)) static int crypto_gcm_decrypt(struct aead_request *req)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
 unsigned int authsize = crypto_aead_authsize(aead);
 unsigned int cryptlen = req->cryptlen;
 u32 flags = aead_request_flags(req);

 cryptlen -= authsize;

 crypto_gcm_init_common(req);

 gctx->src = sg_next(pctx->src);
 gctx->cryptlen = cryptlen;
 gctx->complete = gcm_dec_hash_continue;

 return gcm_hash(req, flags);
}
