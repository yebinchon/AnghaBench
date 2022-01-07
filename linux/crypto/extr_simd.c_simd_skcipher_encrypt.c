
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct skcipher_request {int dummy; } ;
struct simd_skcipher_ctx {TYPE_1__* cryptd_tfm; } ;
struct crypto_skcipher {int dummy; } ;
struct TYPE_3__ {struct crypto_skcipher base; } ;


 struct crypto_skcipher* cryptd_skcipher_child (TYPE_1__*) ;
 scalar_t__ cryptd_skcipher_queued (TYPE_1__*) ;
 int crypto_simd_usable () ;
 struct simd_skcipher_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 scalar_t__ in_atomic () ;
 struct skcipher_request* skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_request_set_tfm (struct skcipher_request*,struct crypto_skcipher*) ;

__attribute__((used)) static int simd_skcipher_encrypt(struct skcipher_request *req)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 struct simd_skcipher_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct skcipher_request *subreq;
 struct crypto_skcipher *child;

 subreq = skcipher_request_ctx(req);
 *subreq = *req;

 if (!crypto_simd_usable() ||
     (in_atomic() && cryptd_skcipher_queued(ctx->cryptd_tfm)))
  child = &ctx->cryptd_tfm->base;
 else
  child = cryptd_skcipher_child(ctx->cryptd_tfm);

 skcipher_request_set_tfm(subreq, child);

 return crypto_skcipher_encrypt(subreq);
}
