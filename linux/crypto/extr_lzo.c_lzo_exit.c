
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzo_ctx {int lzo_comp_mem; } ;
struct crypto_tfm {int dummy; } ;


 struct lzo_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int lzo_free_ctx (int *,int ) ;

__attribute__((used)) static void lzo_exit(struct crypto_tfm *tfm)
{
 struct lzo_ctx *ctx = crypto_tfm_ctx(tfm);

 lzo_free_ctx(((void*)0), ctx->lzo_comp_mem);
}
