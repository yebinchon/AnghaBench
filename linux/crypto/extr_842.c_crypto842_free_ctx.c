
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_scomp {int dummy; } ;


 int kfree (void*) ;

__attribute__((used)) static void crypto842_free_ctx(struct crypto_scomp *tfm, void *ctx)
{
 kfree(ctx);
}
