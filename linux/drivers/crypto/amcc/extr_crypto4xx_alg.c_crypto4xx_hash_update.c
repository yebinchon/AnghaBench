
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct crypto4xx_ctx {int sa_len; int sa_in; } ;
struct TYPE_2__ {int tfm; } ;
struct ahash_request {int nbytes; int src; TYPE_1__ base; int result; } ;


 int crypto4xx_build_pd (TYPE_1__*,struct crypto4xx_ctx*,int ,struct scatterlist*,int ,int *,int ,int ,int ,int ,int *) ;
 unsigned int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 struct crypto4xx_ctx* crypto_tfm_ctx (int ) ;
 int sg_init_one (struct scatterlist*,int ,unsigned int) ;

int crypto4xx_hash_update(struct ahash_request *req)
{
 struct crypto_ahash *ahash = crypto_ahash_reqtfm(req);
 struct crypto4xx_ctx *ctx = crypto_tfm_ctx(req->base.tfm);
 struct scatterlist dst;
 unsigned int ds = crypto_ahash_digestsize(ahash);

 sg_init_one(&dst, req->result, ds);

 return crypto4xx_build_pd(&req->base, ctx, req->src, &dst,
      req->nbytes, ((void*)0), 0, ctx->sa_in,
      ctx->sa_len, 0, ((void*)0));
}
