
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz4hc_ctx {int lz4hc_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 struct lz4hc_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lz4hc_free_ctx (int *,int ) ;

__attribute__((used)) static void lz4hc_exit(struct crypto_tfm *tfm)
{
 struct lz4hc_ctx *ctx = crypto_tfm_ctx(tfm);

 lz4hc_free_ctx(((void*)0), ctx->lz4hc_comp_mem);
}
