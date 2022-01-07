
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_scomp {int dummy; } ;


 int __deflate_exit (void*) ;
 int kzfree (void*) ;

__attribute__((used)) static void deflate_free_ctx(struct crypto_scomp *tfm, void *ctx)
{
 __deflate_exit(ctx);
 kzfree(ctx);
}
