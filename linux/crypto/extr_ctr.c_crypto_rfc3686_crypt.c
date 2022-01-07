
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int data; int complete; int flags; } ;
struct skcipher_request {int cryptlen; int dst; int src; TYPE_1__ base; int iv; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_rfc3686_req_ctx {int * iv; struct skcipher_request subreq; } ;
struct crypto_rfc3686_ctx {int nonce; struct crypto_skcipher* child; } ;
typedef int __be32 ;


 int CTR_RFC3686_IV_SIZE ;
 int CTR_RFC3686_NONCE_SIZE ;
 scalar_t__ PTR_ALIGN (int *,unsigned long) ;
 int cpu_to_be32 (int) ;
 unsigned long crypto_skcipher_alignmask (struct crypto_skcipher*) ;
 struct crypto_rfc3686_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_request_set_callback (struct skcipher_request*,int ,int ,int ) ;
 int skcipher_request_set_crypt (struct skcipher_request*,int ,int ,int ,int *) ;
 int skcipher_request_set_tfm (struct skcipher_request*,struct crypto_skcipher*) ;

__attribute__((used)) static int crypto_rfc3686_crypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_rfc3686_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct crypto_skcipher *child = ctx->child;
 unsigned long align = crypto_skcipher_alignmask(tfm);
 struct crypto_rfc3686_req_ctx *rctx =
  (void *)PTR_ALIGN((u8 *)skcipher_request_ctx(req), align + 1);
 struct skcipher_request *subreq = &rctx->subreq;
 u8 *iv = rctx->iv;


 memcpy(iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
 memcpy(iv + CTR_RFC3686_NONCE_SIZE, req->iv, CTR_RFC3686_IV_SIZE);


 *(__be32 *)(iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
  cpu_to_be32(1);

 skcipher_request_set_tfm(subreq, child);
 skcipher_request_set_callback(subreq, req->base.flags,
          req->base.complete, req->base.data);
 skcipher_request_set_crypt(subreq, req->src, req->dst,
       req->cryptlen, iv);

 return crypto_skcipher_encrypt(subreq);
}
