
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_rfc4543_ctx {int null; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct aead_request {unsigned int assoclen; unsigned int cryptlen; int dst; int src; TYPE_1__ base; } ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_rfc4543_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_skcipher_encrypt (int ) ;
 int nreq ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,unsigned int,int *) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;

__attribute__((used)) static int crypto_rfc4543_copy_src_to_dst(struct aead_request *req, bool enc)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct crypto_rfc4543_ctx *ctx = crypto_aead_ctx(aead);
 unsigned int authsize = crypto_aead_authsize(aead);
 unsigned int nbytes = req->assoclen + req->cryptlen -
         (enc ? 0 : authsize);
 SYNC_SKCIPHER_REQUEST_ON_STACK(nreq, ctx->null);

 skcipher_request_set_sync_tfm(nreq, ctx->null);
 skcipher_request_set_callback(nreq, req->base.flags, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(nreq, req->src, req->dst, nbytes, ((void*)0));

 return crypto_skcipher_encrypt(nreq);
}
