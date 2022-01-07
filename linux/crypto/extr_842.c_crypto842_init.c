
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto842_ctx {int wmem; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int crypto842_alloc_ctx (int *) ;
 struct crypto842_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int crypto842_init(struct crypto_tfm *tfm)
{
 struct crypto842_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->wmem = crypto842_alloc_ctx(((void*)0));
 if (IS_ERR(ctx->wmem))
  return -ENOMEM;

 return 0;
}
