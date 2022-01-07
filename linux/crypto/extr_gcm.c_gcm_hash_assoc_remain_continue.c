
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_gcm_ghash_ctx {scalar_t__ cryptlen; int src; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {int dummy; } ;


 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int gcm_hash_crypt_continue (struct aead_request*,int ) ;
 int gcm_hash_crypt_done ;
 int gcm_hash_crypt_remain_continue (struct aead_request*,int ) ;
 scalar_t__ gcm_hash_update (struct aead_request*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int gcm_hash_assoc_remain_continue(struct aead_request *req, u32 flags)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;

 if (gctx->cryptlen)
  return gcm_hash_update(req, gcm_hash_crypt_done,
           gctx->src, gctx->cryptlen, flags) ?:
         gcm_hash_crypt_continue(req, flags);

 return gcm_hash_crypt_remain_continue(req, flags);
}
