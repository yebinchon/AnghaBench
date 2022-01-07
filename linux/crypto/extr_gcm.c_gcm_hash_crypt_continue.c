
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_gcm_ghash_ctx {int cryptlen; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; } ;
struct aead_request {int dummy; } ;


 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int gcm_hash_crypt_remain_continue (struct aead_request*,int ) ;
 int gcm_hash_crypt_remain_done ;
 scalar_t__ gcm_hash_remain (struct aead_request*,unsigned int,int ,int ) ;
 unsigned int gcm_remain (int ) ;

__attribute__((used)) static int gcm_hash_crypt_continue(struct aead_request *req, u32 flags)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;
 unsigned int remain;

 remain = gcm_remain(gctx->cryptlen);
 if (remain)
  return gcm_hash_remain(req, remain,
           gcm_hash_crypt_remain_done, flags) ?:
         gcm_hash_crypt_remain_continue(req, flags);

 return gcm_hash_crypt_remain_continue(req, flags);
}
