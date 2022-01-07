
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int kref; } ;


 int destroy_spu_context ;
 int kref_put (int *,int *) ;

int put_spu_context(struct spu_context *ctx)
{
 return kref_put(&ctx->kref, &destroy_spu_context);
}
