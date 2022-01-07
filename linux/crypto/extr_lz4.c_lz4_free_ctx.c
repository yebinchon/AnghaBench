
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_scomp {int dummy; } ;


 int vfree (void*) ;

__attribute__((used)) static void lz4_free_ctx(struct crypto_scomp *tfm, void *ctx)
{
 vfree(ctx);
}
