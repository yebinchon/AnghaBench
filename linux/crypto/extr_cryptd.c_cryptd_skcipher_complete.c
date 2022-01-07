
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int base; } ;
struct crypto_skcipher {int dummy; } ;
struct cryptd_skcipher_request_ctx {int (* complete ) (int *,int) ;} ;
struct cryptd_skcipher_ctx {int refcnt; } ;


 int EINPROGRESS ;
 int crypto_free_skcipher (struct crypto_skcipher*) ;
 struct cryptd_skcipher_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int refcount_read (int *) ;
 struct cryptd_skcipher_request_ctx* skcipher_request_ctx (struct skcipher_request*) ;
 int stub1 (int *,int) ;

__attribute__((used)) static void cryptd_skcipher_complete(struct skcipher_request *req, int err)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct cryptd_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct cryptd_skcipher_request_ctx *rctx = skcipher_request_ctx(req);
 int refcnt = refcount_read(&ctx->refcnt);

 local_bh_disable();
 rctx->complete(&req->base, err);
 local_bh_enable();

 if (err != -EINPROGRESS && refcnt && refcount_dec_and_test(&ctx->refcnt))
  crypto_free_skcipher(tfm);
}
