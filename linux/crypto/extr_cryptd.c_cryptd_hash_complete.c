
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ahash {int dummy; } ;
struct cryptd_hash_request_ctx {int (* complete ) (int *,int) ;} ;
struct cryptd_hash_ctx {int refcnt; } ;
struct ahash_request {int base; } ;


 int EINPROGRESS ;
 struct cryptd_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 struct cryptd_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int refcount_read (int *) ;
 int stub1 (int *,int) ;

__attribute__((used)) static void cryptd_hash_complete(struct ahash_request *req, int err)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cryptd_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 struct cryptd_hash_request_ctx *rctx = ahash_request_ctx(req);
 int refcnt = refcount_read(&ctx->refcnt);

 local_bh_disable();
 rctx->complete(&req->base, err);
 local_bh_enable();

 if (err != -EINPROGRESS && refcnt && refcount_dec_and_test(&ctx->refcnt))
  crypto_free_ahash(tfm);
}
