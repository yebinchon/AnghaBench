
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int kref; } ;


 int kref_get (int *) ;

struct spu_context * get_spu_context(struct spu_context *ctx)
{
 kref_get(&ctx->kref);
 return ctx;
}
