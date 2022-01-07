
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_gcm_req_priv_ctx {int * iauth_tag; int * auth_tag; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int cryptlen; scalar_t__ assoclen; int src; } ;


 int EBADMSG ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 scalar_t__ crypto_memneq (int *,int *,unsigned int) ;
 int crypto_xor (int *,int *,int) ;
 int scatterwalk_map_and_copy (int *,int ,scalar_t__,unsigned int,int ) ;

__attribute__((used)) static int crypto_gcm_verify(struct aead_request *req)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 u8 *auth_tag = pctx->auth_tag;
 u8 *iauth_tag = pctx->iauth_tag;
 unsigned int authsize = crypto_aead_authsize(aead);
 unsigned int cryptlen = req->cryptlen - authsize;

 crypto_xor(auth_tag, iauth_tag, 16);
 scatterwalk_map_and_copy(iauth_tag, req->src,
     req->assoclen + cryptlen, authsize, 0);
 return crypto_memneq(iauth_tag, auth_tag, authsize) ? -EBADMSG : 0;
}
