
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzorle_ctx {int lzorle_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 struct lzorle_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lzorle_alloc_ctx (int *) ;

__attribute__((used)) static int lzorle_init(struct crypto_tfm *tfm)
{
 struct lzorle_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->lzorle_comp_mem = lzorle_alloc_ctx(((void*)0));
 if (IS_ERR(ctx->lzorle_comp_mem))
  return -ENOMEM;

 return 0;
}
