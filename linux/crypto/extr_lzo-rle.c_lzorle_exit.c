
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzorle_ctx {int lzorle_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 struct lzorle_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lzorle_free_ctx (int *,int ) ;

__attribute__((used)) static void lzorle_exit(struct crypto_tfm *tfm)
{
 struct lzorle_ctx *ctx = crypto_tfm_ctx(tfm);

 lzorle_free_ctx(((void*)0), ctx->lzorle_comp_mem);
}
