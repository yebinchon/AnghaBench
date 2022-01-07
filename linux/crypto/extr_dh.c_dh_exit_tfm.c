
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh_ctx {int dummy; } ;
struct crypto_kpp {int dummy; } ;


 int dh_clear_ctx (struct dh_ctx*) ;
 struct dh_ctx* dh_get_ctx (struct crypto_kpp*) ;

__attribute__((used)) static void dh_exit_tfm(struct crypto_kpp *tfm)
{
 struct dh_ctx *ctx = dh_get_ctx(tfm);

 dh_clear_ctx(ctx);
}
