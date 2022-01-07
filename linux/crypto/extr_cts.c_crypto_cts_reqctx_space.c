
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cts_reqctx {int dummy; } ;
struct crypto_cts_ctx {struct crypto_skcipher* child; } ;


 int * PTR_ALIGN (int *,scalar_t__) ;
 scalar_t__ crypto_skcipher_alignmask (struct crypto_skcipher*) ;
 struct crypto_cts_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_reqsize (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 struct crypto_cts_reqctx* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static inline u8 *crypto_cts_reqctx_space(struct skcipher_request *req)
{
 struct crypto_cts_reqctx *rctx = skcipher_request_ctx(req);
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct crypto_cts_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct crypto_skcipher *child = ctx->child;

 return PTR_ALIGN((u8 *)(rctx + 1) + crypto_skcipher_reqsize(child),
    crypto_skcipher_alignmask(tfm) + 1);
}
