
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deflate_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int __deflate_init (struct deflate_ctx*,int ) ;
 struct deflate_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int deflate_init(struct crypto_tfm *tfm)
{
 struct deflate_ctx *ctx = crypto_tfm_ctx(tfm);

 return __deflate_init(ctx, 0);
}
