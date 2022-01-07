
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_authenc_esn_ctx {int null; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dst; int src; } ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 int aead_request_flags (struct aead_request*) ;
 struct crypto_authenc_esn_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_skcipher_encrypt (int ) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,unsigned int,int *) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skreq ;

__attribute__((used)) static int crypto_authenc_esn_copy(struct aead_request *req, unsigned int len)
{
 struct crypto_aead *authenc_esn = crypto_aead_reqtfm(req);
 struct crypto_authenc_esn_ctx *ctx = crypto_aead_ctx(authenc_esn);
 SYNC_SKCIPHER_REQUEST_ON_STACK(skreq, ctx->null);

 skcipher_request_set_sync_tfm(skreq, ctx->null);
 skcipher_request_set_callback(skreq, aead_request_flags(req),
          ((void*)0), ((void*)0));
 skcipher_request_set_crypt(skreq, req->src, req->dst, len, ((void*)0));

 return crypto_skcipher_encrypt(skreq);
}
