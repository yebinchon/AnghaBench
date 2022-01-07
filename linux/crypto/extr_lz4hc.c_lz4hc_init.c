
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz4hc_ctx {int lz4hc_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 struct lz4hc_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lz4hc_alloc_ctx (int *) ;

__attribute__((used)) static int lz4hc_init(struct crypto_tfm *tfm)
{
 struct lz4hc_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->lz4hc_comp_mem = lz4hc_alloc_ctx(((void*)0));
 if (IS_ERR(ctx->lz4hc_comp_mem))
  return -ENOMEM;

 return 0;
}
