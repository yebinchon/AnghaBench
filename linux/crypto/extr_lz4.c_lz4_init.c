
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz4_ctx {int lz4_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 struct lz4_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lz4_alloc_ctx (int *) ;

__attribute__((used)) static int lz4_init(struct crypto_tfm *tfm)
{
 struct lz4_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->lz4_comp_mem = lz4_alloc_ctx(((void*)0));
 if (IS_ERR(ctx->lz4_comp_mem))
  return -ENOMEM;

 return 0;
}
