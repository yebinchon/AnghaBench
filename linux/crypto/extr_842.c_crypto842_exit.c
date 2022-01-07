
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto842_ctx {int wmem; } ;


 int crypto842_free_ctx (int *,int ) ;
 struct crypto842_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void crypto842_exit(struct crypto_tfm *tfm)
{
 struct crypto842_ctx *ctx = crypto_tfm_ctx(tfm);

 crypto842_free_ctx(((void*)0), ctx->wmem);
}
