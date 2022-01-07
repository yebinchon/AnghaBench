
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_gcm_req_priv_ctx {int iauth_tag; int * auth_tag; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int dst; } ;


 int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int crypto_xor (int *,int ,int) ;
 int scatterwalk_map_and_copy (int *,int ,scalar_t__,int ,int) ;

__attribute__((used)) static int gcm_enc_copy_hash(struct aead_request *req, u32 flags)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 u8 *auth_tag = pctx->auth_tag;

 crypto_xor(auth_tag, pctx->iauth_tag, 16);
 scatterwalk_map_and_copy(auth_tag, req->dst,
     req->assoclen + req->cryptlen,
     crypto_aead_authsize(aead), 1);
 return 0;
}
