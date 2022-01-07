
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int data; int complete; int flags; } ;
struct aead_request {scalar_t__ cryptlen; scalar_t__ assoclen; int dst; int src; TYPE_1__ base; int iv; } ;
struct crypto_rfc4543_req_ctx {struct aead_request subreq; } ;
struct crypto_rfc4543_ctx {int child; int nonce; } ;
struct crypto_aead {int dummy; } ;


 int * PTR_ALIGN (int *,scalar_t__) ;
 struct crypto_rfc4543_req_ctx* aead_request_ctx (struct aead_request*) ;
 int aead_request_set_ad (struct aead_request*,scalar_t__) ;
 int aead_request_set_callback (struct aead_request*,int ,int ,int ) ;
 int aead_request_set_crypt (struct aead_request*,int ,int ,unsigned int,int *) ;
 int aead_request_set_tfm (struct aead_request*,int ) ;
 scalar_t__ crypto_aead_alignmask (int ) ;
 unsigned int crypto_aead_authsize (struct crypto_aead*) ;
 struct crypto_rfc4543_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 int crypto_aead_reqsize (int ) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int crypto_rfc4543_copy_src_to_dst (struct aead_request*,int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int crypto_rfc4543_crypt(struct aead_request *req, bool enc)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct crypto_rfc4543_ctx *ctx = crypto_aead_ctx(aead);
 struct crypto_rfc4543_req_ctx *rctx = aead_request_ctx(req);
 struct aead_request *subreq = &rctx->subreq;
 unsigned int authsize = crypto_aead_authsize(aead);
 u8 *iv = PTR_ALIGN((u8 *)(rctx + 1) + crypto_aead_reqsize(ctx->child),
      crypto_aead_alignmask(ctx->child) + 1);
 int err;

 if (req->src != req->dst) {
  err = crypto_rfc4543_copy_src_to_dst(req, enc);
  if (err)
   return err;
 }

 memcpy(iv, ctx->nonce, 4);
 memcpy(iv + 4, req->iv, 8);

 aead_request_set_tfm(subreq, ctx->child);
 aead_request_set_callback(subreq, req->base.flags,
      req->base.complete, req->base.data);
 aead_request_set_crypt(subreq, req->src, req->dst,
          enc ? 0 : authsize, iv);
 aead_request_set_ad(subreq, req->assoclen + req->cryptlen -
        subreq->cryptlen);

 return enc ? crypto_aead_encrypt(subreq) : crypto_aead_decrypt(subreq);
}
