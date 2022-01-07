
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skcipher_request {int dummy; } ;
struct crypto_gcm_ghash_ctx {int cryptlen; } ;
struct TYPE_2__ {struct skcipher_request skreq; } ;
struct crypto_gcm_req_priv_ctx {struct crypto_gcm_ghash_ctx ghash_ctx; TYPE_1__ u; } ;
struct aead_request {int dummy; } ;


 int crypto_gcm_init_crypt (struct aead_request*,int ) ;
 struct crypto_gcm_req_priv_ctx* crypto_gcm_reqctx (struct aead_request*) ;
 int crypto_gcm_verify (struct aead_request*) ;
 scalar_t__ crypto_skcipher_decrypt (struct skcipher_request*) ;
 int gcm_decrypt_done ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,struct aead_request*) ;

__attribute__((used)) static int gcm_dec_hash_continue(struct aead_request *req, u32 flags)
{
 struct crypto_gcm_req_priv_ctx *pctx = crypto_gcm_reqctx(req);
 struct skcipher_request *skreq = &pctx->u.skreq;
 struct crypto_gcm_ghash_ctx *gctx = &pctx->ghash_ctx;

 crypto_gcm_init_crypt(req, gctx->cryptlen);
 skcipher_request_set_callback(skreq, flags, gcm_decrypt_done, req);
 return crypto_skcipher_decrypt(skreq) ?: crypto_gcm_verify(req);
}
